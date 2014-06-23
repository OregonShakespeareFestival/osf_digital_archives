## Sufia 4.0.0 rc1 Development Environment

### Environment Preparation

1. Install rails 4.1.1 `gem install rails 4.1.1` <-- only applicable if working from an old commit prior to project generation, additional steps will be required to generate the entire project, see sufia documentation in resources section.
2. Install base dependencies + sufia dependecies ( The Gemfile is already patched according to the sufia version) `bundle install` <-- required the first time a vagrant box is spun up in a new workspace.

### Rake Tasks

1. `rake db:migrate`

##### The following commands where in the sufia documentation but are unecessary as we are using hydra-jetty for our development environment.
```
rake jetty:clean
rake jetty:config
rake jetty:start
```

### Running It
1. Navigate to the directory `/vagrant/hydra-jetty/` and run the command `java -jar start.jar`  This will start the embedded solr and fedora instances.  solr and fedora can be reached via `localhost:8983/solr` and `localhost:8983/fedora` respectively.  
Hydra-jetty takes a good minute or two to spool up, if an error is thrown with a java stack trace and a message about resources already allocated ensure that `rake jetty:start` has not been run, if it has been look in `/vagrant/tmp/pids` for the pid the sufia jetty process and run `kill $PID` and then restart hydra-jetty
2. In another shell run `rails s` in `/vagrant` 

### resources
- [sufia 3.7.0 Documentation](http://rubydoc.info/gems/sufia/3.7.0/frames)
- [sufia 4.0.0 rc1 Documentation](https://github.com/projecthydra/sufia)
- [Blacklight Project Page](https://github.com/projectblacklight/blacklight)
- [hydra-jetty project](https://github.com/projecthydra/hydra-jetty)
- [hydra wiki](https://github.com/projecthydra/hydra/wiki)

Slightly less useful resources:  

- [Rsolr Documentation](https://github.com/rsolr/rsolr)
- [solr Wiki](https://wiki.apache.org/solr/FrontPage)
- [Blacklight Solr Configuration](https://github.com/projectblacklight/blacklight/wiki/Solr-Configuration)
