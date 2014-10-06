class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  has_metadata "exifMetadata", type: Datastreams::ExifMetadata
  has_attributes :exif_creator, :exif_creator_country, :exif_creator_region,
    :exif_creator_postal_code, :exif_creator_city, :exif_creator_address, :exif_description,
    :exif_image_description, :exif_keyword, :exif_subject, :exif_usage_terms,
    datastream: :exifMetadata, multiple: false

  def terms_for_display
    self.class.terms_for_display | [:exif_creator,
      :exif_creator_country, :exif_creator_address]
  end

  # expects a hash of exif metadata
  def map_exif_metadata
    exif_keys = attributes.keys.select{|k| k =~ /^exif/}.map{|k| k.sub('exif_', '')}.map(&:to_sym)
    update_attributes exif_metadata.slice(*exif_keys)
    # puts exif_metadata
  end

  def exif_metadata
  	# requires Perl-Image-Exif-Tool -- needs to be added to vagrant box
  	# requires exiftool gem, may replace with exiftool_vendored to remove additional dependency

    begin
      # fetch bytestring of content
      content_stream = datastreams.fetch('content').content
      tmp_filepath = Sufia.config.temp_file_base + '/tmp_' + title.to_s
      tmp_file = File.new(tmp_filepath, 'w')
      tmp_file.binmode
      tmp_file.write content_stream
      tmp_file.close
      metadata = Exiftool.new(tmp_filepath)

    rescue IOError => e
      # log error, cannot create file
    rescue KeyError => e
      # log error, content stream not found for file
    rescue Exiftool::ExiftoolNotInstalled => e
      # log error, missing dependency Perl-Image-Exif-Tool
    rescue Exiftool::NoSuchFile => e
      # log error, temp file was not written
    end
    if metadata.errors?
      # log error parsing temp file
      # return something different?
    end
    if File.exist?(tmp_filepath)
      File.delete(tmp_file)
      # check if null and return something else?
    end

  	return metadata.to_hash

  end

end
