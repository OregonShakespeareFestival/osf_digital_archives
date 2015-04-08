# -*- encoding: utf-8 -*-
# stub: hydra-file_characterization 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-file_characterization"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Treacy", "Jeremy Friesen", "Sue Richeson", "Rajesh Balekai"]
  s.date = "2013-10-25"
  s.description = "To provide a wrapper for file characterization"
  s.email = ["jatr@kb.dk", "jeremy.n.friesen@gmail.com", "spr7b@virginia.edu", "rbalekai@gmail.com"]
  s.homepage = "https://github.com/projecthydra/hydra-file_characterization"
  s.licenses = ["APACHE2"]
  s.rubygems_version = "2.2.2"
  s.summary = "To provide a wrapper for file characterization"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
