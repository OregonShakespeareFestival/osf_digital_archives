class IngestExifMetadataJob < ActiveFedoraPidBasedJob
  def queue_name
    :ingest
  end

  def run
    generic_file.map_exif_metadata()
  end
end