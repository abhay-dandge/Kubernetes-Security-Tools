#!/bin/bash

kubectl exec -n security-demo suspicious-pod -- cat /etc/shadow

kubectl exec -it -n security-demo suspicious-pod -- sh
