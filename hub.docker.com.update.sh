#!/usr/bin/env bash

# after 
# docker login

docker-compose build --pull
docker push laouache/gh-docker-smtp-armhf:latest
docker-compose down
docker-compose up -d
