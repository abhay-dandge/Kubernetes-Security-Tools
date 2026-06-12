#!/bin/bash

IMAGE=$1

echo "Scanning Image: $IMAGE"

anchorectl image add $IMAGE

anchorectl image wait $IMAGE

anchorectl image vulnerabilities $IMAGE
