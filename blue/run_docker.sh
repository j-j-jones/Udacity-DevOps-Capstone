#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=predict .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
#docker run -p 8080:8000 predict
docker run -p 80:80 predict # Had to do this as another Port on  my PC was using Port 80
