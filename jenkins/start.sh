#!/bin/sh

IMAGE=rasp/jenkins

docker run  -it --rm \
            -v $HOME/.ssh/id_rsa:/var/jenkins_home/.ssh/id_rsa \
            -v $HOME/.ssh/id_rsa.pub:/var/jenkins_home/.ssh/id_rsa.pub \
            -v $HOME/.ssh/known_hosts:/var/jenkins_home/.ssh/known_hosts \
            -v $(pwd)/jenkins_home:/var/jenkins_home \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -p 8080:8080 \
            -p 50000:50000 \
            $IMAGE 
            
