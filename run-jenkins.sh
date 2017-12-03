#!/bin/bash

docker run -d -p 8080:8080 -p 50000:50000 \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --mount source=jenkins_home,target=/var/jenkins_home \
           joelb/jenkins:latest


