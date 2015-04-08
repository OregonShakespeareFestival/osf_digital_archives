# -*- encoding: utf-8 -*-
# stub: resque-pool 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "resque-pool"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["nicholas a. evans"]
  s.date = "2015-03-25"
  s.description = "    quickly and easily fork a pool of resque workers,\n    saving memory (w/REE) and monitoring their uptime\n"
  s.email = ["nick@ekenosen.net"]
  s.executables = ["resque-pool"]
  s.files = ["bin/resque-pool"]
  s.homepage = "http://github.com/nevans/resque-pool"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "quickly and easily fork a pool of resque workers"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, ["~> 1.22"])
      s.add_runtime_dependency(%q<trollop>, ["~> 2.0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.10"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.4.11"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<ronn>, [">= 0"])
    else
      s.add_dependency(%q<resque>, ["~> 1.22"])
      s.add_dependency(%q<trollop>, ["~> 2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.10"])
      s.add_dependency(%q<cucumber>, ["~> 1.2"])
      s.add_dependency(%q<aruba>, ["~> 0.4.11"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<ronn>, [">= 0"])
    end
  else
    s.add_dependency(%q<resque>, ["~> 1.22"])
    s.add_dependency(%q<trollop>, ["~> 2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.10"])
    s.add_dependency(%q<cucumber>, ["~> 1.2"])
    s.add_dependency(%q<aruba>, ["~> 0.4.11"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<ronn>, [">= 0"])
  end
end
