#!/bin/bash

set -e

# ==========================
# Sysdig Secure Installation
# ==========================

# Replace these values
ACCESS_KEY="<YOUR_SYSDIG_ACCESS_KEY>"
CLUSTER_NAME="k8s-security-demo"
REGION="us1"

echo "Adding Sysdig Helm Repository..."

helm repo add sysdig https://charts.sysdig.com

helm repo update

echo "Installing Sysdig Agent and Security Components..."

helm install sysdig-agent sysdig/sysdig-deploy \
  --namespace sysdig-agent \
  --create-namespace \
  --set global.sysdig.accessKey=$ACCESS_KEY \
  --set global.clusterConfig.name=$CLUSTER_NAME \
  --set global.sysdig.region=$REGION

echo ""
echo "Installation Complete"
echo ""

kubectl get pods -n sysdig-agent
