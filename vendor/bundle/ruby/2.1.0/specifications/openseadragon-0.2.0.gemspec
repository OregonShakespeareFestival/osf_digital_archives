# -*- encoding: utf-8 -*-
# stub: openseadragon 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openseadragon"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Coyne", "Chris Beer", "Christopher Jesudurai"]
  s.date = "2015-03-18"
  s.description = "OpenSeadragon is a javascript library for displaying tiling images. This gem packages those assets and some Rails helpers for using them"
  s.email = [["justin@curationexperts.com", "cabeer@stanford.edu", "jchris@stanford.edu"], "OpenSeadragon assets and helpers for Rails. http://openseadragon.github.io/"]
  s.homepage = "https://github.com/iiif/openseadragon-rails"
  s.licenses = ["Apache 2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "OpenSeadragon assets and helpers for Rails. http://openseadragon.github.io/"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<engine_cart>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.1"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, ["> 3.2.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<engine_cart>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rails>, ["> 3.2.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<engine_cart>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rails>, ["> 3.2.0"])
  end
end
