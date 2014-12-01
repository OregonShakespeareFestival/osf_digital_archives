# -*- encoding : utf-8 -*-
class SolrDocument 

  include Blacklight::Solr::Document
  # Adds Sufia behaviors to the SolrDocument.
  include Sufia::SolrDocumentBehavior

  def asset_create_date
    field = self[Solrizer.solr_name("asset_create_date", :stored_sortable, type: :date)]
    # binding.pry
    return unless field.present?
    begin
      Date.parse(field).to_formatted_s(:standard)
    rescue
      ActiveFedora::Base.logger.info "Unable to parse date: #{field.first.inspect} for #{self['id']}"
    end
  end

  # self.unique_key = 'id'
  
  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension( Blacklight::Solr::Document::Email )
  
  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension( Blacklight::Solr::Document::Sms )

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Solr::Document::ExtendableClassMethods#field_semantics
  # and Blacklight::Solr::Document#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension( Blacklight::Solr::Document::DublinCore)    

end
