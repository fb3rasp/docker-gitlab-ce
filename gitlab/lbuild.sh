#!/bin/sh

IMAGE=rasp/gitlab

docker build . -t $IMAGE
