# -*- encoding: utf-8 -*-
# stub: exiftool 0.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "exiftool"
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matthew McEachen"]
  s.date = "2013-12-01"
  s.description = "Multiget ExifTool wrapper for ruby"
  s.email = ["matthew-github@mceachen.org"]
  s.homepage = "https://github.com/mceachen/exiftoolr"
  s.licenses = ["MIT"]
  s.requirements = ["ExifTool (see http://www.sno.phy.queensu.ca/~phil/exiftool/)"]
  s.rubygems_version = "2.2.2"
  s.summary = "Multiget ExifTool wrapper for ruby"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<minitest-great_expectations>, [">= 0"])
      s.add_development_dependency(%q<minitest-reporters>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<minitest-great_expectations>, [">= 0"])
      s.add_dependency(%q<minitest-reporters>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<minitest-great_expectations>, [">= 0"])
    s.add_dependency(%q<minitest-reporters>, [">= 0"])
  end
end
