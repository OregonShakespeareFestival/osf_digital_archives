class Datastreams::ExifMetadata < ActiveFedora::OmDatastream

	set_terminology do |t|
		t.root(path: "fields")
		#t.exif_author index_as: :stored_searchable
		t.exif_copyright index_as: :stored_searchable
		t.exif_creator index_as: :stored_searchable
		t.exif_creator_country index_as: :stored_searchable
		t.exif_creator_region index_as: :stored_searchable
		t.exif_creator_postal_code index_as: :stored_searchable
		t.exif_creator_city index_as: :stored_searchable
		t.exif_creator_address index_as: :stored_searchable
		t.exif_description index_as: :stored_searchable
		t.exif_image_description index_as: :stored_searchable
		t.exif_keyword index_as: :stored_searchable #s?
		t.exif_rights index_as: :stored_searchable
		t.exif_subject index_as: :stored_searchable
		t.exif_usage_terms index_as: :stored_searchable
		#t.exif_last_keyword_xmp index_as: :stored_searchable
		#t.exif_xp_keywords index_as: :stored_searchable

	end

	def self.xml_template
		Nokogiri::XML.parse("<fields/>")
	end

	def prefix
		'osf_'
	end

end