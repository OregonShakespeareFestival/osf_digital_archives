## Sufia 4.0.0 rc1 Development Environment

### Environment Preparation

1. Install rails 4.1.1 `gem install rails 4.1.1` <-- only applicable if working from an old commit prior to project generation, additional steps will be required to generate the entire project, see sufia documentation in resources section.
2. Install base dependencies + sufia dependecies ( The Gemfile is already patched according to the sufia version) `bundle install` <-- required the first time a vagrant box is spun up in a new workspace.

### Rake Tasks

1. `rake db:migrate`

2. Download a copy of hydra-jetty
```
rake jetty:clean
rake jetty:config
```

### Running It
1. Start hydra-jetty with the provided ruby gem
```
rake jetty:start
```

2. Run `rails s` in `/vagrant` 

### resources
- [sufia 4.0.0 rc1 Documentation](https://github.com/projecthydra/sufia)
- [sufia 3.7.0 Documentation](http://rubydoc.info/gems/sufia/3.7.0/frames)
- [Blacklight Project Page](https://github.com/projectblacklight/blacklight)
- [hydra-jetty project](https://github.com/projecthydra/hydra-jetty)
- [hydra wiki](https://github.com/projecthydra/hydra/wiki)

Slightly less useful resources:  

- [Rsolr Documentation](https://github.com/rsolr/rsolr)
- [solr Wiki](https://wiki.apache.org/solr/FrontPage)
- [Blacklight Solr Configuration](https://github.com/projectblacklight/blacklight/wiki/Solr-Configuration)
