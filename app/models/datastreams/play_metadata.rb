class Datastreams::PlayMetadata < ActiveFedora::OmDatastream

	set_terminology do |t|
		t.root(path: "fields")
		t.play index_as: :stored_searchable
		t.playwright index_as: :stored_searchable
		t.year index_as: :stored_searchable, type: :integer

	end

	def self.xml_template
		Nokogiri::XML.parse("<fields/>")
	end

	def prefix
		'osf_'
	end

end