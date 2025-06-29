#!/bin/bash
set -e


echo "Creating namespace..."
kubectl apply -f namespace.yaml

echo "Applying secrets..."
kubectl apply -f secret.yaml

echo "Applying configmap..."
kubectl apply -f configmap.yaml

echo "Deploying PostgreSQL..."
kubectl apply -f deployment-themeparkride-database.yaml
kubectl apply -f cluster-ip-themeparkride-database.yaml

echo "Deploying themeparkride-service..."
kubectl apply -f deployment-themeparkride-service.yaml
kubectl apply -f cluster-ip-themeparkride-service.yaml

echo "Deployment complete!"

