#!/bin/bash

echo "Creating Anchore Namespace"

kubectl apply -f ../manifests/namespace.yaml

echo "Deploying Anchore"

kubectl apply -f ../manifests/anchore-engine.yaml

echo "Deployment Complete"
