#!/bin/sh

IMAGE=rasp/jenkins

docker build . -t $IMAGE
