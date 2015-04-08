# -*- encoding: utf-8 -*-
# stub: browse-everything 0.8.1 ruby lib

Gem::Specification.new do |s|
  s.name = "browse-everything"
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Carolyn Cole", "Jessie Keck", "Michael B. Klein", "Thomas Scherz", "Xiaoming Wang", "Jeremy Friesen"]
  s.date = "2015-03-03"
  s.description = "AJAX/Rails engine file browser for cloud storage services"
  s.email = ["cam156@psu.edu", "jkeck@stanford.edu", "mbklein@gmail.com", "scherztc@ucmail.uc.edu", "xw5d@virginia.edu", "jeremy.n.friesen@gmail.com"]
  s.homepage = "https://github.com/projecthydra/browse-everything"
  s.licenses = ["Apache 2"]
  s.rubygems_version = "2.2.2"
  s.summary = "AJAX/Rails engine file browser for cloud storage services"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<google_drive>, [">= 0"])
      s.add_runtime_dependency(%q<dropbox-sdk>, [">= 1.6.2"])
      s.add_runtime_dependency(%q<skydrive>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-box>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_runtime_dependency(%q<font-awesome-rails>, [">= 0"])
      s.add_runtime_dependency(%q<google-api-client>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-its>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<engine_cart>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<google_drive>, [">= 0"])
      s.add_dependency(%q<dropbox-sdk>, [">= 1.6.2"])
      s.add_dependency(%q<skydrive>, [">= 0"])
      s.add_dependency(%q<ruby-box>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_dependency(%q<font-awesome-rails>, [">= 0"])
      s.add_dependency(%q<google-api-client>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<rspec-its>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<engine_cart>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<google_drive>, [">= 0"])
    s.add_dependency(%q<dropbox-sdk>, [">= 1.6.2"])
    s.add_dependency(%q<skydrive>, [">= 0"])
    s.add_dependency(%q<ruby-box>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<bootstrap-sass>, [">= 0"])
    s.add_dependency(%q<font-awesome-rails>, [">= 0"])
    s.add_dependency(%q<google-api-client>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<rspec-its>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<engine_cart>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
  end
end
