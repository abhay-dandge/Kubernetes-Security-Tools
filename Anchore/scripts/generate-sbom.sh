#!/bin/bash

IMAGE=$1

echo "Generating SBOM"

anchorectl image sbom $IMAGE > ../reports/sbom-report.json

echo "SBOM Saved"
