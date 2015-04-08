# -*- encoding: utf-8 -*-
# stub: rdf-rdfa 1.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-rdfa"
  s.version = "1.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gregg", "Kellogg"]
  s.date = "2014-11-11"
  s.description = "RDF::RDFa is an RDFa reader/writer for Ruby using the RDF.rb library suite."
  s.email = "public-rdf-ruby@w3.org"
  s.homepage = "http://ruby-rdf.github.com/rdf-rdfa"
  s.licenses = ["Public Domain"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubyforge_project = "rdf-rdfa"
  s.rubygems_version = "2.2.2"
  s.summary = "RDFa reader/writer for RDF.rb."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdf>, [">= 1.1.6", "~> 1.1"])
      s.add_runtime_dependency(%q<haml>, ["~> 4.0"])
      s.add_runtime_dependency(%q<rdf-xsd>, ["~> 1.1"])
      s.add_runtime_dependency(%q<rdf-aggregate-repo>, [">= 0"])
      s.add_runtime_dependency(%q<htmlentities>, ["~> 4.3"])
      s.add_development_dependency(%q<open-uri-cached>, [">= 0.0.5", "~> 0.0"])
      s.add_development_dependency(%q<json-ld>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.0"])
      s.add_development_dependency(%q<rdf-spec>, ["~> 1.1"])
      s.add_development_dependency(%q<rdf-turtle>, ["~> 1.1"])
      s.add_development_dependency(%q<rdf-rdfxml>, ["~> 1.1"])
      s.add_development_dependency(%q<rdf-isomorphic>, ["~> 1.1"])
      s.add_development_dependency(%q<sparql>, ["~> 1.1"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
    else
      s.add_dependency(%q<rdf>, [">= 1.1.6", "~> 1.1"])
      s.add_dependency(%q<haml>, ["~> 4.0"])
      s.add_dependency(%q<rdf-xsd>, ["~> 1.1"])
      s.add_dependency(%q<rdf-aggregate-repo>, [">= 0"])
      s.add_dependency(%q<htmlentities>, ["~> 4.3"])
      s.add_dependency(%q<open-uri-cached>, [">= 0.0.5", "~> 0.0"])
      s.add_dependency(%q<json-ld>, ["~> 1.1"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rspec-its>, ["~> 1.0"])
      s.add_dependency(%q<rdf-spec>, ["~> 1.1"])
      s.add_dependency(%q<rdf-turtle>, ["~> 1.1"])
      s.add_dependency(%q<rdf-rdfxml>, ["~> 1.1"])
      s.add_dependency(%q<rdf-isomorphic>, ["~> 1.1"])
      s.add_dependency(%q<sparql>, ["~> 1.1"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<rdf>, [">= 1.1.6", "~> 1.1"])
    s.add_dependency(%q<haml>, ["~> 4.0"])
    s.add_dependency(%q<rdf-xsd>, ["~> 1.1"])
    s.add_dependency(%q<rdf-aggregate-repo>, [">= 0"])
    s.add_dependency(%q<htmlentities>, ["~> 4.3"])
    s.add_dependency(%q<open-uri-cached>, [">= 0.0.5", "~> 0.0"])
    s.add_dependency(%q<json-ld>, ["~> 1.1"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rspec-its>, ["~> 1.0"])
    s.add_dependency(%q<rdf-spec>, ["~> 1.1"])
    s.add_dependency(%q<rdf-turtle>, ["~> 1.1"])
    s.add_dependency(%q<rdf-rdfxml>, ["~> 1.1"])
    s.add_dependency(%q<rdf-isomorphic>, ["~> 1.1"])
    s.add_dependency(%q<sparql>, ["~> 1.1"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
  end
end