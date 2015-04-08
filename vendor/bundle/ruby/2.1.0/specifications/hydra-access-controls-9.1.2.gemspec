# -*- encoding: utf-8 -*-
# stub: hydra-access-controls 9.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-access-controls"
  s.version = "9.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Beer", "Justin Coyne", "Matt Zumwalt"]
  s.date = "2015-03-13"
  s.description = "Access controls for project hydra"
  s.email = ["hydra-tech@googlegroups.com"]
  s.homepage = "http://projecthydra.org"
  s.licenses = ["APACHE2"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.2.2"
  s.summary = "Access controls for project hydra"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_runtime_dependency(%q<active-fedora>, ["~> 9.0.0"])
      s.add_runtime_dependency(%q<cancancan>, ["~> 1.8"])
      s.add_runtime_dependency(%q<deprecation>, ["~> 0.1"])
      s.add_runtime_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
    else
      s.add_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_dependency(%q<active-fedora>, ["~> 9.0.0"])
      s.add_dependency(%q<cancancan>, ["~> 1.8"])
      s.add_dependency(%q<deprecation>, ["~> 0.1"])
      s.add_dependency(%q<blacklight>, ["~> 5.10"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 4.0"])
    s.add_dependency(%q<active-fedora>, ["~> 9.0.0"])
    s.add_dependency(%q<cancancan>, ["~> 1.8"])
    s.add_dependency(%q<deprecation>, ["~> 0.1"])
    s.add_dependency(%q<blacklight>, ["~> 5.10"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
  end
end
