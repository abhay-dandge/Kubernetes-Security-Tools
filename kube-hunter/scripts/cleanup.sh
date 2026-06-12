#!/bin/bash

kubectl delete -f ./manifests/job.yaml

kubectl delete -f ./manifests/namespace.yaml

echo "Cleanup Complete"
