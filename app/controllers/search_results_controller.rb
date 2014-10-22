class SearchResultsController < CatalogController
  layout "osf-client/application"

  def index
    # Returns a Blacklight::SolrResponse
    #  - See http://www.rubydoc.info/github/projectblacklight/blacklight/Blacklight/SolrResponse
    (@response, @document_list) = get_search_results

    filter(@response)
  end

  private

  # TODO: Filter @response.docs by filter criteria.  Venue, date, document type, etc
  def filter(response)

  end

end



