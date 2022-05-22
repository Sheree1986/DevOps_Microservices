#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mymicroservice_api
# Step 2:  
# Authenticate & tag
docker login --username sheree1986
docker tag mymicroservice_api sheree1986/mymicroservice_api
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push sheree1986/mymicroservice_api:latest
