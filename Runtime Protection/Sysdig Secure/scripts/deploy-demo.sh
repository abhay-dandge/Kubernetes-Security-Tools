#!/bin/bash

kubectl apply -f ./manifests/namespace.yaml

kubectl apply -f ./manifests/nginx-deployment.yaml

kubectl apply -f ./manifests/suspicious-pod.yaml

echo "Demo Environment Created"
