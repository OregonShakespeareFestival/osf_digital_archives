# -*- encoding: utf-8 -*-
# stub: active_fedora-noid 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "active_fedora-noid"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael J. Giarlo"]
  s.date = "2015-03-31"
  s.description = "Noid identifier services for ActiveFedora-based applications."
  s.email = ["leftwing@alumni.rutgers.edu"]
  s.homepage = "https://github.com/projecthydra-labs/active_fedora-noid"
  s.licenses = ["Apache2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Noid identifier services for ActiveFedora-based applications"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<active-fedora>, ["~> 9.0"])
      s.add_runtime_dependency(%q<noid>, ["~> 0.7"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2"])
    else
      s.add_dependency(%q<active-fedora>, ["~> 9.0"])
      s.add_dependency(%q<noid>, ["~> 0.7"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.2"])
    end
  else
    s.add_dependency(%q<active-fedora>, ["~> 9.0"])
    s.add_dependency(%q<noid>, ["~> 0.7"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.2"])
  end
end
