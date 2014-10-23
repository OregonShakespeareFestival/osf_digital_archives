class SearchResultsController < CatalogController
  layout "osf-client/application"

  def index
    # Returns a Blacklight::SolrResponse
    #  - See http://www.rubydoc.info/github/projectblacklight/blacklight/Blacklight/SolrResponse
    (videoResponse, video_document_list) = get_search_results({q: params["q"], f: { desc_metadata__resource_type_sim: ["Video"]} })
    (imageResponse, image_document_list) = get_search_results({q: params["q"], f: { desc_metadata__resource_type_sim: ["Image"]} })
    (articleResponse, article_document_list) = get_search_results({q: params["q"], f: { desc_metadata__resource_type_sim: ["Article"]} })
    (audioResponse, audio_document_list) = get_search_results({q: params["q"], f: { desc_metadata__resource_type_sim: ["Audio"]} })

    @videos = filter(videoResponse.docs)
    @images = filter(imageResponse.docs)
    @articles = filter(articleResponse.docs)
    @audio = filter(audioResponse.docs)
  end

  private

  # TODO: Filter @response.docs by filter criteria.  Venue, date, document type, etc
  def filter(response)
    response
  end

end



