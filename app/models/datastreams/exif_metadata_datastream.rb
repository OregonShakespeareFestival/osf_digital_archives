class Datastreams::ExifMetadataDatastream < ActiveFedora::OmDatastream

	set_terminology do |t|
		t.root(path: "fields")
		t.exif_creator index_as: :stored_searchable
		t.exif_creator_address index_as: :stored_searchable
		t.exif_description index_as: :stored_searchable
		t.exif_image_description index_as: :stored_searchable
		t.exif_keywords index_as: :stored_searchable
		t.exif_subject index_as: :stored_searchable
		t.exif_usage_terms index_as: :stored_searchable

	end

	def self.xml_template
		Nokogiri::XML.parse("<fields/>")
	end

	# def prefix
	# 	'osf_'
	# end

end