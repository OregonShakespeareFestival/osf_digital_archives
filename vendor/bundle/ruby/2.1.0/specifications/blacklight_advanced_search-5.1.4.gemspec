# -*- encoding: utf-8 -*-
# stub: blacklight_advanced_search 5.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "blacklight_advanced_search"
  s.version = "5.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonathan Rochkind", "Chris Beer"]
  s.date = "2015-03-19"
  s.email = ["blacklight-development@googlegroups.com"]
  s.homepage = "http://projectblacklight.org/"
  s.rubyforge_project = "blacklight"
  s.rubygems_version = "2.2.2"
  s.summary = "Blacklight Advanced Search plugin"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_runtime_dependency(%q<parslet>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<jettywrapper>, [">= 1.4.2"])
      s.add_development_dependency(%q<engine_cart>, ["~> 0.6"])
    else
      s.add_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_dependency(%q<parslet>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<jettywrapper>, [">= 1.4.2"])
      s.add_dependency(%q<engine_cart>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<blacklight>, ["~> 5.10"])
    s.add_dependency(%q<parslet>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<jettywrapper>, [">= 1.4.2"])
    s.add_dependency(%q<engine_cart>, ["~> 0.6"])
  end
end
