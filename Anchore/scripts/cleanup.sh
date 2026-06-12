#!/bin/bash

kubectl delete -f ../manifests/anchore-engine.yaml

kubectl delete -f ../manifests/namespace.yaml

echo "Cleanup Complete"
