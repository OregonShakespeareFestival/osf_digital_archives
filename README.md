# OSF Digital Archives

The OSF Digital Archive is a digital repository for audio / video assets from the Oregon Shakespeare Festival archives.

The implementation is derived from Project Hydra's Sufia 4.0.0 rc1

See https://github.com/projecthydra/sufia

# Developing the OSF Digital Archives on Mac OS

## One-time Preparations

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

To use a local version of the sufia gem. If you don't need to make changes to sufia you don't need to do this.

    /project_dir/$ git clone git@github.com:OregonShakespeareFestival/sufia.git
    $ bundle config local.SUFIA /sufia

    This will point to your local gem. Note that changes to the sufia directory are gitignored as it is maintained as a separate git repo. 

Download and spin up the virtual machine

    vagrant up

Enter the virtual box

    vagrant ssh

### Preparation

Install exiftool
    yum install perl-Image-ExifTool

Install the gems

    bundle

Create the database

    rake db:create
    rake db:migrate

Set up hydra-jetty

    rake jetty:clean
    rake jetty:config

## On-going Development
    
    Looking for a better way to reindex after changing search fields but this works in console
    ActiveFedora::Base.all.each{|f| f.update_index}

### Spinning up the services

Open several tabs and `vagrant ssh` into each of them.

#### Jetty (server for fedora commons / solr)

    rake jetty:start

#### Rails Server (application server)

    rails s

You can reach the application at [http://localhost:3000/](http://localhost:3000/)

#### Resque (background job workers)

    QUEUE=* rake resque:work

#### Admin
    in console
    u=User.find_by_email('xxx')
    u.group_list = 'admin'
    u.save!

#### STAGING

    ssh -i hydra.pem ec2-user@hydra.osfashland.org
    git pull origin xxxx

> bundle, migrate, ect

    start_rails -e production

> To run in development mode leave off the -e flag or specify development, assets are precompiled as part of the start_rails function.

    start_resque

##### To view the resque or rails stdout
    screen -x rails
    screen -x resque

## Resources

- [sufia 4.0.0 rc1 Documentation](https://github.com/projecthydra/sufia)
- [sufia 3.7.0 Documentation](http://rubydoc.info/gems/sufia/3.7.0/frames)
- [Blacklight Project Page](https://github.com/projectblacklight/blacklight)
- [hydra-jetty project](https://github.com/projecthydra/hydra-jetty)
- [hydra wiki](https://github.com/projecthydra/hydra/wiki)

Slightly less useful resources:

- [Rsolr Documentation](https://github.com/rsolr/rsolr)
- [solr Wiki](https://wiki.apache.org/solr/FrontPage)
- [Blacklight Solr Configuration](https://github.com/projectblacklight/blacklight/wiki/Solr-Configuration)
