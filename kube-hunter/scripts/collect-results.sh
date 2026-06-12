#!/bin/bash

POD=$(kubectl get pods -n kube-hunter | grep kube-hunter | awk '{print $1}')

kubectl logs $POD -n kube-hunter > ./reports/scan-report.txt

echo "Results saved to reports/scan-report.txt"
