# -*- encoding: utf-8 -*-
# stub: hydra-collections 5.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-collections"
  s.version = "5.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Carolyn Cole"]
  s.date = "2015-03-19"
  s.description = "A rails engine for managing Hydra Collections"
  s.email = ["cam156@psu.edu"]
  s.homepage = "https://github.com/projecthydra/hydra-collections"
  s.licenses = ["APACHE2"]
  s.rubygems_version = "2.2.2"
  s.summary = "A rails engine for managing Hydra Collections"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hydra-head>, ["~> 9.1"])
      s.add_runtime_dependency(%q<deprecation>, ["~> 0.1"])
      s.add_runtime_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_development_dependency(%q<engine_cart>, ["~> 0.5"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.1"])
    else
      s.add_dependency(%q<hydra-head>, ["~> 9.1"])
      s.add_dependency(%q<deprecation>, ["~> 0.1"])
      s.add_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_dependency(%q<engine_cart>, ["~> 0.5"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<hydra-head>, ["~> 9.1"])
    s.add_dependency(%q<deprecation>, ["~> 0.1"])
    s.add_dependency(%q<blacklight>, ["~> 5.10"])
    s.add_dependency(%q<engine_cart>, ["~> 0.5"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
  end
end
