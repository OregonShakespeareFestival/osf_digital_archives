class Datastreams::ProductionData < ActiveFedora::OmDatastream
  set_terminology do |t|
    t.root(path: "fields")
    t.production_name index_as: [:stored_searchable, :facetable]
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end

  def prefix
    ''
  end
end
