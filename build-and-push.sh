#!/bin/bash

set -e

DOCKER_USERNAME="abdelkader112002"


echo "Building frontend..."
cd Frontend
docker build -t frontend-service:v1.0 .
docker tag frontend-service:v1.0 $DOCKER_USERNAME/frontend-service:v1.0
cd ..

echo "Pushing images..."
docker push $DOCKER_USERNAME/frontend-service:v1.0

echo "Done."