## Developing for the OSF Digital Archive on a Mac OS box

The OSF Digital Archive is derived from Sufia 4.0.0 rc1

### VirtualBox

Download and install VirtualBox from:

https://www.virtualbox.org/wiki/Downloads

### Vagrant

Download and install Vagrant from:

https://www.vagrantup.com/downloads.html

### Source code

Clone the project into a workspace

    cd ~/workspace/
    git clone git@github.com:OregonShakespeareFestival/osf_digital_archives.git

Download and spin up the virtual machine

    vagrant up

Enter the virtual box

    vagrant ssh

### Preparation

Install the gems

    bundle

Create the database

    rake db:create
    rake db:migrate

Spin up hydra-jetty

    rake jetty:clean
    rake jetty:config

### Spinning up the services

Open several tabs and `vagrant ssh` into each of them.

#### Jetty (server for fedora commons / solr)

    rake jetty:start

#### Rails Server (application server)

    rails s

#### Resque (background job workers)

    QUEUE=* rake resque:work

You can reach a resque dashboard at: [http://localhost:3000/resque_web](http://localhost:3000/resque_web)

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
