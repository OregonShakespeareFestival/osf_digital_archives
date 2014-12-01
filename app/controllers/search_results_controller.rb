class SearchResultsController < CatalogController
  layout "osf-client/application"

  def index
    headers['Access-Control-Allow-Origin'] = '*'

    @query = params[:q]

    # filter values 
    # &filters%5Byear%5D=2014
    # year:2014 

    # &filters%5Byears%5D%5B%5D=2009&filters%5Byears%5D%5B%5D=2014 
    # years:[2000,2014]

    @filters = params[:filters] || {}

    page = params[:page] || 1
    per_page = params[:per_page] || 10
    resource_type = params[:t].singularize.capitalize

    response = do_search(@query, @filters, resource_type, page, per_page)

    render json: {'type' => params[:t], 'data' => response, 'filters' => @filters, 'query' => @query }
  end

  private

  def do_search(query, filters, resource_type, page, per_page)
    facets = {desc_metadata__resource_type_sim: resource_type}
    facets.merge!(filters_to_query_values(filters)) unless !filters || filters.empty?
    q_params = {q: query, f: facets, page: page, per_page: per_page }

    (res, res_document_list) = get_search_results(q_params)
    data = res.docs.map { |d|
      file = GenericFile.find(d[:id])

      # TODO: Add production when it is implemented.
      # TODO: Update urls to use GenericFile properties.
      {
        'date_created'  => file.date_created.first,
        'description'   => d[:desc_metadata__description],
        'id'            => d[:id][6..-1],
        'keywords'      => d[:desc_metadata__tag],
        'mp4_url'       => sufia.download_path(file, datastream_id: 'mp4'),
        'production'    => nil,
        'visibility'    => file.visibility,
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

  def filters_to_query_values(filters)
    query_values = filters.map do |filter, value|
      next if value.blank?
      case filter
        when 'years'

          # {asset_create_year_isi: [(1000...3000)]}
          {asset_create_year_isi: [value.map(&:to_i).inject{|s,e| s...e }]} # maps array with start and end to a range
        when 'year'
          # &filters%5Byear%5D=2014
          {asset_create_year_isi: value}
        else {}
      end
    end
    query_values.reduce({}, :update) #reduces array of hashes to single hash
    
  end
end


