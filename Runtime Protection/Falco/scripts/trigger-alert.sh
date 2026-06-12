#!/bin/bash

echo "Deploying suspicious pod..."

kubectl apply -f ./manifests/suspicious-pod.yaml

echo "Waiting for pod to start..."

kubectl wait --for=condition=Ready pod/suspicious-pod --timeout=60s

echo "Triggering Falco alert..."

kubectl exec suspicious-pod -- cat /etc/shadow

echo "Done. Check Falco logs:"
echo "kubectl logs -n falco -l app.kubernetes.io/name=falco"
