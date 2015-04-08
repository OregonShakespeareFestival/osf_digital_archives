# -*- encoding: utf-8 -*-
# stub: hydra-head 9.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-head"
  s.version = "9.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matt Zumwalt, Bess Sadler, Julie Meloni, Naomi Dushay, Jessie Keck, John Scofield, Justin Coyne & many more.  See https://github.com/projecthydra/hydra-head/contributors"]
  s.date = "2015-03-12"
  s.description = "Hydra-Head is a Rails Engine containing the core code for a Hydra application. The full hydra stack includes: Blacklight, Fedora, Solr, active-fedora, solrizer, and om"
  s.email = ["hydra-tech@googlegroups.com"]
  s.homepage = "http://projecthydra.org"
  s.licenses = ["APACHE2"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "Hydra-Head Rails Engine (requires Rails3)"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2.6"])
      s.add_runtime_dependency(%q<hydra-access-controls>, ["= 9.1.2"])
      s.add_runtime_dependency(%q<hydra-core>, ["= 9.1.2"])
      s.add_development_dependency(%q<jettywrapper>, [">= 2.0.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2.6"])
      s.add_dependency(%q<hydra-access-controls>, ["= 9.1.2"])
      s.add_dependency(%q<hydra-core>, ["= 9.1.2"])
      s.add_dependency(%q<jettywrapper>, [">= 2.0.0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2.6"])
    s.add_dependency(%q<hydra-access-controls>, ["= 9.1.2"])
    s.add_dependency(%q<hydra-core>, ["= 9.1.2"])
    s.add_dependency(%q<jettywrapper>, [">= 2.0.0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
  end
end
