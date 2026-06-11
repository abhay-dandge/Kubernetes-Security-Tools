#!/bin/bash

echo "Collecting Kube-bench Results"

POD=$(kubectl get pods | grep kube-bench | awk '{print $1}')

kubectl logs $POD > ../reports/sample-report.txt

echo "Results saved to reports/sample-report.txt"
