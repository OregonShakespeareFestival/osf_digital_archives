require 'rdf'
class ActiveFedora::RDF::Ldp < RDF::StrictVocabulary("http://www.w3.org/ns/ldp#")
  # Property definitions
  property :contains
  property :member
end
