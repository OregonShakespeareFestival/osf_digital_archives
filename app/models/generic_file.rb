class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  has_metadata "osfMetadata", type: Datastreams::PlayMetadata
  has_attributes :play, :playwright, :year, datastream: :osfMetadata, multiple: false

  def get_exif_metadata(generic_file)
  	# requires Perl-Image-Exif-Tool -- needs to be added to vagrant box
  	# requires exiftool gem, may replace with exiftool_vendored to remove additional dependency

    begin
      # fetch bytestring of content
      content_stream = generic_file.datastreams.fetch('content').content
      tmp_filepath = Sufia.config.temp_file_base+'/tmp_'+generic_file.title.to_s
      tmp_file = File.new(tmp_filepath, 'w')
      tmp_file.binmode
      tmp_file.write content_stream
      tmp_file.close
      exif_metadata = Exiftool.new(tmp_filename)

    rescue IOError => e
      # log error, cannot create file
    rescue KeyError => e
      # log error, content stream not found for file
    rescue Exiftool::ExiftoolNotInstalled => e
      # log error, missing dependency Perl-Image-Exif-Tool
    rescue Exiftool::NoSuchFile => e
      # log error, temp file was not written
    end
    if exif_metadata.errors?
      # log error parsing temp file
      # return something different?
    end
    if File.exist?(tmp_filepath)
      File.delete(tmp_file)
      # check if null and return something else?
    end

  	return exif_metadata.to_hash

  end

end
