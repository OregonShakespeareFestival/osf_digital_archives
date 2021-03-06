class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  # Overrides Sufia defined attributes so they aren't multiple
  # sufia-models/app/models/concerns/sufia/generic_file/metadata.rb
  has_attributes :title, :description, :rights, :date_created, :resource_type, datastream: :descMetadata, multiple: false

  # New attributes

  has_metadata "exifMetadata", type: Datastreams::ExifMetadataDatastream
  has_attributes :exif_creator, :exif_creator_address, :exif_description, :exif_image_description,
    :exif_usage_terms, datastream: :exifMetadata, multiple: false
  has_attributes :exif_subject, :exif_keywords, datastream: :exifMetadata, multiple: true

  has_metadata 'production_data', type: Datastreams::ProductionDataDatastream
  has_attributes :production_name, :production_id, :venue_name, :venue_id, :work_name, :work_id, datastream: :production_data, multiple: true

  has_metadata 'date_created_stream', type: Datastreams::DateCreatedDatastream
  has_attributes :asset_create_year, datastream: :date_created_stream, multiple: false

  after_initialize :add_accessible_attributes
  before_save :set_calculated_fields

  def set_calculated_fields
    data = {}
    data.merge!({production_name: production.production_name}) if production
    data.merge!({venue_name: venue.name}) if venue
    data.merge!({work_name: work.title}) if work
    data.merge!({asset_create_year: year_created}) if year_created
    self.attributes = data
  end

  def add_accessible_attributes
    self._accessible_attributes[:default] << :production_id << :production_name << :venue_id << :venue_name << :asset_create_year << :work_name << :work_id
  end
  

  def terms_for_display
    terms = self.class.terms_for_display | [:production_id, :venue_id, :work_id, :exif_creator, :exif_creator_address, :exif_description,
      :exif_image_description, :exif_keywords, :exif_subject, :exif_usage_terms]
    terms - [:subject]
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
    self.attributes = Hash[ exif_data.map{ |k,v| ["exif_#{k}", sanitized_exif_value(v)] } ]
    self.save!

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

  def work
    return if !work_id || work_id.empty? || work_id.first.nil?
    ProductionCredits::Work.find(work_id).first
  end

  def production
    return if !production_id || production_id.empty? || production_id.first.nil?
    ProductionCredits::Production.find(production_id).first
  end

  def venue
    if venue_id && !venue_id.empty? && !venue_id.first.nil? then
      venue = ProductionCredits::Venue.find(venue_id).first
    end

    if !venue && production
      venue = production.venue
    end
    venue
  end

  def year_created
    if date_created && !date_created.empty? && !date_created.first.scan(/(\d{1,2}[-\/]\d{1,2}[-\/]\d{4})|(\d{4}[-\/]\d{1,2}[-\/]\d{1,2})/).empty?
      Date.parse(date_created.first).year.to_s
    end
  end

  def discoverable?
    discover_groups.include?('public')
  end

  def public_metadata_terms
    terms_for_editing | [:production_name, :venue_name, :work_name]
  end

  def public_metadata
    public_metadata_terms.map { |f|
      if f == :date_created
        {f => Date.parse(self['date_created'].first).strftime("%m/%d/%Y")}
      else
        {f => self[f]}
      end
    }.reduce({}, :update)
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
