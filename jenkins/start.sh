#!/bin/sh

IMAGE=rasp/jenkins

docker run  -it \
            -v $(pwd)/jenkins_home:/var/jenkins_home \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -p 8080:8080 \
            -p 50000:50000 \
            $IMAGE \
            bash
