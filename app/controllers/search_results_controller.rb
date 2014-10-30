class SearchResultsController < CatalogController
  layout "osf-client/application"

  def index
    headers['Access-Control-Allow-Origin'] = '*'

    @query = params[:q]
    @filters = {
      'works' => [],
      'venues' => [],
      'resourceTypes' => [],
      'years' => []
    }
    resource_types = params[:t] ? params[:t].split(',') : ['images', 'videos', 'audios', 'articles']

    response = resource_types.each_with_object({}) do |type, obj|
      page = params[type + '_page'] || 1
      per_page = params[type + '_per_page'] || 10
      obj[type] = do_search(type.singularize.capitalize, page, per_page)
    end

    render json: response.merge({ 'filters' => @filters, 'query' => @query })
  end

  private

  def do_search(resource_type, page, per_page)
    (res, res_document_list) = get_search_results({q: @query, f: { desc_metadata__resource_type_sim: [resource_type]}, page: page, per_page: per_page })

    res = filter(res)

    data = res.docs.map { |d|
      file = GenericFile.find(d[:id])

      # TODO: Add production when it is implemented.
      # TODO: Update urls to use GenericFile properties.
      {
        'access'        => d[:read_access_group_ssim].first,
        'date'          => d[:desc_metadata__date_created],
        'description'   => d[:desc_metadata__description],
        'id'            => d[:id][6..-1],
        'keywords'      => d[:desc_metadata__tag],
        'mp4_url'       => sufia.download_path(file, datastream_id: 'mp4'),
        'production'    => nil,
        'title'         => d[:desc_metadata__title_tesim].first,
        'thumbnail_url' => sufia.download_path(file, datastream_id: 'thumbnail'),
        'type'          => d[:desc_metadata__resource_type_tesim].first,
        'url'           => sufia.download_path(file),
        'webm_url'      => sufia.download_path(file, datastream_id: 'webm')
      }
    }

    return {
      'current_page'   => page,
      'data'           => data,
      'items_per_page' => per_page,
      'total_items'    => res.response['numFound']
    }
  end

  # TODO: Do filtering by venue, year, work
  def filter(response, filters = {})
    response
  end
end



