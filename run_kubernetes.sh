#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=udacitymservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerpath --image=tshoblak/udacitymservice:v1pro3 --port=80

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl expose deployment udacitymservice --type=LoadBalancer --port=80
minikube service udacitymservice
