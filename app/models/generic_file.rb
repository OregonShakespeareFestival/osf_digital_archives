class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  has_metadata "osfMetadata", type: Datastreams::PlayMetadata
  has_attributes :play, :playwright, :year, datastream: :osfMetadata, multiple: false

  def get_exif_metadata(generic_file)
  	# requires Perl-Image-Exif-Tool -- needs to be added to vagrant box
  	# requires exiftool gem
  	# TODO: error checking

  	# fetch bytestring of content
  	content_stream = generic_file.datastreams.fetch('content').content

  	tmp_filename = Sufia.config.temp_file_base+'/tmp_'+generic_file.title.to_s
  	tmp_file = File.new(tmp_filename, 'w')
  	tmp_file.binmode
  	tmp_file.write content_stream

  	exif_hash = Exiftool.new(tmp_filename).to_hash

  	File.delete(tmp_file)

  	return exif_hash

  end

end
