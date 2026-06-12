#!/bin/bash

kubectl apply -f ../manifests/suspicious-pod.yaml

sleep 10

kubectl exec suspicious-pod -- sh
