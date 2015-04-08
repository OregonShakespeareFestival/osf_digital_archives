# -*- encoding: utf-8 -*-
# stub: hydra-derivatives 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-derivatives"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Coyne"]
  s.date = "2015-03-27"
  s.description = "Derivative generation plugin for hydra"
  s.email = ["justin@curationexperts.com"]
  s.homepage = "https://github.com/projecthydra/hydra-derivatives"
  s.licenses = ["APACHE2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Derivative generation plugin for hydra"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<jettywrapper>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_runtime_dependency(%q<active-fedora>, ["~> 9.0"])
      s.add_runtime_dependency(%q<hydra-file_characterization>, ["~> 0.3"])
      s.add_runtime_dependency(%q<mini_magick>, ["< 5", ">= 3.2"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_runtime_dependency(%q<mime-types>, ["~> 1"])
      s.add_runtime_dependency(%q<deprecation>, ["~> 0.1"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<jettywrapper>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<active-fedora>, ["~> 9.0"])
      s.add_dependency(%q<hydra-file_characterization>, ["~> 0.3"])
      s.add_dependency(%q<mini_magick>, ["< 5", ">= 3.2"])
      s.add_dependency(%q<activesupport>, ["~> 4.0"])
      s.add_dependency(%q<mime-types>, ["~> 1"])
      s.add_dependency(%q<deprecation>, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<jettywrapper>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<active-fedora>, ["~> 9.0"])
    s.add_dependency(%q<hydra-file_characterization>, ["~> 0.3"])
    s.add_dependency(%q<mini_magick>, ["< 5", ">= 3.2"])
    s.add_dependency(%q<activesupport>, ["~> 4.0"])
    s.add_dependency(%q<mime-types>, ["~> 1"])
    s.add_dependency(%q<deprecation>, ["~> 0.1"])
  end
end
