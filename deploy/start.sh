#!/bin/bash

echo "Creating Images..."

docker build -t rdline/projeto-backend:1.0 backend/.
docker buil -t rdline/projeto-database:1.0 database/.

echo "Pushing..."

docker push rdline/projeto-backend:1.0
docker push rdline/projeto-database:1.0

echo "Creating Services cluster kubernetes..."

kubectl apply -f ./service.yml

echo "Create deployments..."

kubectl apply -f ./deployment.yml


