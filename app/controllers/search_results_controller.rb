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
      obj[type] = do_search(type.singularize.capitalize, params[type + '_page'])
    end

    render json: response.merge({ 'filters' => @filters, 'query' => @query })
  end

  private

  def do_search(resource_type, page)
    # TODO: Pass page to Solr to retrieve correct page
    (res, res_document_list) = get_search_results({q: @query, f: { desc_metadata__resource_type_sim: [resource_type]} })

    res = filter(res)

    # Remove sufia: prefix from id's
    data = res.docs.map { |d|
      {
        'id' => d[:id][6..-1],
        'access' => d[:read_access_group_ssim].first,
        'type' => d[:desc_metadata__resource_type_tesim].first,
        'title' => d[:desc_metadata__title_tesim].first
      }
    }

    return {
      'current_page' => 0,
      'items_per_page' => 10,
      'total_items' => res.response['numFound'],
      'data' => data
    }
  end

  # TODO: Do filtering by venue, year, work
  def filter(response, filters = {})
    response
  end
end



