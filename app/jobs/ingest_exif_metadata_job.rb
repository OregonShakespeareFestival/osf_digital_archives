class IngestExifMetadataJob < ActiveFedoraPidBasedJob
	def queue_name
    :exif_ingest
  end

  def run
    generic_file.map_exif_metadata(generic_file)
  end
end