class Datastreams::ProductionDataDatastream < ActiveFedora::OmDatastream
  set_terminology do |t|
    t.root(path: "fields")
    t.production_name index_as: [:stored_searchable, :facetable]
    t.production_id index_as: [:stored_sortable, :facetable], type: :integer
    t.venue_name index_as: [:stored_searchable, :facetable]
    t.venue_id index_as: [:stored_sortable, :facetable], type: :integer
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end

  def prefix
    ''
  end
end
