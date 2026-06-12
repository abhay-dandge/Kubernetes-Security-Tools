#!/bin/bash

echo "Creating Namespace"

kubectl apply -f ../manifests/namespace.yaml

echo "Deploying Kube-hunter"

kubectl apply -f ../manifests/job.yaml

echo "Deployment Complete"
