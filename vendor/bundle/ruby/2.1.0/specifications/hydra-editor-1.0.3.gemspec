# -*- encoding: utf-8 -*-
# stub: hydra-editor 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-editor"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Coyne", "David Chandek-Stark"]
  s.date = "2015-04-07"
  s.description = "A basic metadata editor for hydra-head"
  s.email = ["hydra-tech@googlegroups.com"]
  s.homepage = "http://github.com/projecthydra/hydra-editor"
  s.rubygems_version = "2.2.2"
  s.summary = "A basic metadata editor for hydra-head"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.1"])
      s.add_runtime_dependency(%q<active-fedora>, [">= 9.0.0"])
      s.add_runtime_dependency(%q<cancancan>, ["~> 1.8"])
      s.add_runtime_dependency(%q<simple_form>, ["~> 3.1.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.1"])
      s.add_development_dependency(%q<factory_girl_rails>, ["~> 4.2"])
      s.add_development_dependency(%q<capybara>, ["~> 2.4"])
      s.add_development_dependency(%q<devise>, ["~> 3.4"])
      s.add_development_dependency(%q<hydra-head>, ["~> 9.0"])
      s.add_development_dependency(%q<engine_cart>, ["~> 0.5"])
      s.add_development_dependency(%q<jettywrapper>, ["~> 2.0"])
    else
      s.add_dependency(%q<rails>, ["~> 4.1"])
      s.add_dependency(%q<active-fedora>, [">= 9.0.0"])
      s.add_dependency(%q<cancancan>, ["~> 1.8"])
      s.add_dependency(%q<simple_form>, ["~> 3.1.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
      s.add_dependency(%q<factory_girl_rails>, ["~> 4.2"])
      s.add_dependency(%q<capybara>, ["~> 2.4"])
      s.add_dependency(%q<devise>, ["~> 3.4"])
      s.add_dependency(%q<hydra-head>, ["~> 9.0"])
      s.add_dependency(%q<engine_cart>, ["~> 0.5"])
      s.add_dependency(%q<jettywrapper>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.1"])
    s.add_dependency(%q<active-fedora>, [">= 9.0.0"])
    s.add_dependency(%q<cancancan>, ["~> 1.8"])
    s.add_dependency(%q<simple_form>, ["~> 3.1.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.1"])
    s.add_dependency(%q<factory_girl_rails>, ["~> 4.2"])
    s.add_dependency(%q<capybara>, ["~> 2.4"])
    s.add_dependency(%q<devise>, ["~> 3.4"])
    s.add_dependency(%q<hydra-head>, ["~> 9.0"])
    s.add_dependency(%q<engine_cart>, ["~> 0.5"])
    s.add_dependency(%q<jettywrapper>, ["~> 2.0"])
  end
end
