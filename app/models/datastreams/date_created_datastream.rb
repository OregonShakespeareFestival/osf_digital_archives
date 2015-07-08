class Datastreams::DateCreatedDatastream < ActiveFedora::OmDatastream
  set_terminology do |t|
    t.root(path: "fields")
    t.asset_create_year index_as: [:stored_sortable, :facetable], type: :integer
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end

  # def prefix
  #   ''
  # end
end
