#!/bin/sh



docker build -t nginxim nginx-docker
docker tag nginxim:latest nginxim:staging

docker build -t petim .
docker tag petim:latest petim:staging

docker-compose up -d
