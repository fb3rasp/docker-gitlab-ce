#!/bin/sh

IMAGE=rasp/gitlab
CONTAINERNAME=gitlab

docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 \
    --publish 80:80 \
    --publish 22:22 \
    --name $CONTAINERNAME \
    --volume $(pwd)/gitlab/config:/etc/gitlab \
    --volume $(pwd)/gitlab/logs:/var/log/gitlab \
    --volume $(pwd)/gitlab/data:/var/opt/gitlab \
    $IMAGE
