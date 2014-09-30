class GenericFile < ActiveFedora::Base
  include Sufia::GenericFile

  has_metadata "osfMetadata", type: Datastreams::PlayMetadata
  has_attributes :play, :playwright, :year, datastream: :osfMetadata, multiple: false
end
