class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  has_metadata "exifMetadata", type: Datastreams::ExifMetadata
  has_attributes :exif_creator, :exif_creator_address, :exif_description, :exif_image_description,
    :exif_usage_terms, datastream: :exifMetadata, multiple: false
  has_attributes :exif_subject, :exif_keywords, datastream: :exifMetadata, multiple: true

  has_metadata 'production_data', type: Datastreams::ProductionData
  has_attributes :production_name, datastream: :production_data, multiple: true

  def terms_for_display
    self.class.terms_for_display | [:exif_creator, :exif_creator_address, :exif_description,
      :exif_image_description, :exif_keywords, :exif_subject, :exif_usage_terms, :production_name]
  end

  def terms_for_editing
    # terms_for_editing.reject{|t| t =~ /^exif/}
    t = terms_for_display - [:date_modified, :date_uploaded, :format]
    t.reject{|t| t =~ /^exif/}
  end

  # TODO: refactor me to actually have good logic about whether a gf has a thumbnail
  # def thumb_url
  #   return 'audio.png' if audio? && !thumbnail.content
  #   return 'default.png' if !thumbnail.content

  #   image_tag sufia.download_path this.noid, datastream_id: 'thumbnail'
  # end

  # expects a hash of exif metadata
  def map_exif_metadata
    # logger.info "MAPPING EXIF DATA FOR FILE #{id}"
    ignore_keys = [:version]

    #keys that exist in generic_file that are prefixed with exif_
    exif_keys = attributes.keys.select{|k| k =~ /^exif/}

    #keys that we will use to select the data we want from the exif data
    extraction_keys = exif_keys.map{|k| k.sub('exif_', '')}.map(&:to_sym)

    exif_data = exif_metadata.slice(*extraction_keys - ignore_keys)

    #rehash with exif_ prefix to map to attributes
    # can this be done with iteration and self.send to build the hash?
    update_attributes Hash[ exif_data.map{ |k,v| ["exif_#{k}", sanitized_exif_value(v)] } ]

  end

  def exif_metadata
  	# requires Perl-Image-Exif-Tool -- needs to be added to vagrant box
  	# requires exiftool gem, may replace with exiftool_vendored to remove additional dependency

    # begin
      # fetch bytestring of content
      content_stream = datastreams.fetch('content').content
      tmp_filepath = Sufia.config.temp_file_base + '/tmp_' + title.join(" ").to_s
      tmp_file = File.new(tmp_filepath, 'w')
      tmp_file.binmode
      tmp_file.write content_stream
      tmp_file.close
      metadata = Exiftool.new(tmp_filepath)

    # TODO: better to comment these out if they aren't going to log errors
    # rescue IOError => e
    #   # log error, cannot create file
    # rescue KeyError => e
    #   # log error, content stream not found for file
    # rescue Exiftool::ExiftoolNotInstalled => e
    #   # log error, missing dependency Perl-Image-Exif-Tool
    # rescue Exiftool::NoSuchFile => e
    #   # log error, temp file was not written
    # end
    # if metadata.errors?
    #   # log error parsing temp file
    #   # return something different?
    # end
    if File.exist?(tmp_filepath)
      File.delete(tmp_file)
      # check if null and return something else?
    end

  	return metadata.to_hash

  end

  def discoverable?
    discover_groups.include?('public')
  end

  private

  def sanitized_exif_value(value)
    value.kind_of?(Array) ? value.join(', ') : value.to_s
  end
end
