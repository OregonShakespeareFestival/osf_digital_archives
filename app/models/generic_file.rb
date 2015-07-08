class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  # Overrides Sufia defined attributes so they aren't multiple
  # sufia-models/app/models/concerns/sufia/generic_file/metadata.rb
  # has_attributes :title, :description, :rights, :date_created, :subject, :resource_type, datastream: :descMetadata, multiple: false

  # New attributes

  has_metadata "exifMetadata", type: Datastreams::ExifMetadataDatastream
  has_attributes :exif_creator, :exif_creator_address, :exif_description, :exif_image_description,
    :exif_usage_terms, datastream: :exifMetadata, multiple: false
  has_attributes :exif_subject, :exif_keywords, datastream: :exifMetadata, multiple: true

  has_metadata 'production_data', type: Datastreams::ProductionDataDatastream
  has_attributes :production_name, :venue_name, datastream: :production_data, multiple: true

  has_metadata 'date_created_stream', type: Datastreams::DateCreatedDatastream
  has_attributes :asset_create_year, datastream: :date_created_stream, multiple: false

  def terms_for_display
    self.class.terms_for_display | [:production_name, :venue_name, :exif_creator, :exif_creator_address, :exif_description,
      :exif_image_description, :exif_keywords, :exif_subject, :exif_usage_terms]
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

  def production
    return nil unless production_name
    ProductionCredits::Production.find_by(production_name: production_name)
  end

  def venue
    unless venue_name.empty? then
      venue = ProductionCredits::Venue.find_by_name_or_alias(venue_name.first)
    end

    if !venue && production
      venue = production.venue
    end
    venue
  end

  def discoverable?
    discover_groups.include?('public')
  end

  private

  def sanitized_exif_value(v)
    return v if v.kind_of? String

    if v.kind_of? Array
      v.join ", "
    else
      v.to_s
    end
  end


end
