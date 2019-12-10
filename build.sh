#!/bin/bash
set -e
HERE=$(dirname "$0")
IMAGE_NAME=docker-console
REPOSITORY=aphexairlines/docker-console
# publish to github when they allow public access without a login:
#  https://github.community/t5/GitHub-Actions/docker-pull-from-public-GitHub-Package-Registry-fail-with-quot/td-p/32782/page/2
#REPOSITORY=docker.pkg.github.com/dsilva/docker-console/docker-console

docker build -f "$HERE"/Dockerfile -t $IMAGE_NAME "$HERE"
docker tag $IMAGE_NAME $REPOSITORY:latest
docker push $REPOSITORY

