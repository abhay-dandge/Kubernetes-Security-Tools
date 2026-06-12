#!/bin/bash

kubectl logs -n falco \
  -l app.kubernetes.io/name=falco \
  > ./reports/runtime-alerts.txt

echo "Alerts saved"
