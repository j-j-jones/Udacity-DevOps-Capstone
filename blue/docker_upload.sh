#!/usr/bin/env bash

# STEP-01:
# ESTABLISH DOCKER PATH
dockerpath=jjones/udacity
docker login

# STEP-02:
# TAG DOCKER IMAGE
docker tag blueImage $dockerpath

# STEP-03:
# PUSH DOCKER IMAGE
docker push $dockerpath
