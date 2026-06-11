#!/bin/bash

echo "================================"
echo "Kube-bench Security Scan"
echo "================================"

kubectl apply -f ../manifests/job.yaml

echo ""
echo "Waiting for job completion..."
sleep 30

echo ""
kubectl get jobs

echo ""
kubectl get pods

echo ""
echo "Scan Complete"
