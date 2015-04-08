# -*- encoding: utf-8 -*-
# stub: hydra-batch-edit 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-batch-edit"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Coyne", "Matt Zumwalt"]
  s.date = "2013-10-01"
  s.description = "Rails engine to do batch editing with hydra-head"
  s.email = ["justin.coyne@yourmediashelf.com"]
  s.homepage = "https://github.com/projecthydra/hydra-batch-edit"
  s.licenses = ["APACHE2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Rails engine to do batch editing with hydra-head"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<blacklight>, [">= 0"])
      s.add_runtime_dependency(%q<hydra-collections>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<blacklight>, [">= 0"])
      s.add_dependency(%q<hydra-collections>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<blacklight>, [">= 0"])
    s.add_dependency(%q<hydra-collections>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
