#!/bin/bash

helm uninstall falco -n falco

kubectl delete pod suspicious-pod --ignore-not-found

echo "Cleanup Complete"
