#!/bin/bash

#Spin up the maria database
docker run -d --name hydrastagingdb andrewkrug/mariadb

#Spin up jetty
docker run -d --name hydrastagingjetty andrewkrug/hydrajetty

#Spin up osfsufia
docker run -d -p 80:80 -P --name osfsufiastaging --link hydrastagingdb:hydrastagingdb --link hydrastagingjetty:hydrastagingjetty  andrewkrug/osfdigitalarchive
