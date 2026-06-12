# Anchore Demo

A hands-on DevSecOps project demonstrating container image security scanning, SBOM generation, compliance validation, and policy enforcement using Anchore.

## Overview

Anchore is a container security platform that helps organizations secure their software supply chain by analyzing container images for vulnerabilities, generating SBOMs, and enforcing security policies.

---

## Features

- Container Image Vulnerability Scanning
- SBOM Generation
- Compliance Validation
- Policy Enforcement
- Software Supply Chain Security
- CI/CD Security Integration

---

## Architecture

```text
+-------------------+
| Developer Pushes  |
| Container Image   |
+---------+---------+
          |
          v
+-------------------+
|     Anchore       |
+---------+---------+
          |
          +----> Vulnerability Scan
          |
          +----> SBOM Generation
          |
          +----> Policy Evaluation
          |
          v
+-------------------+
| Pass / Fail       |
| Security Decision |
+-------------------+
```

---

## Prerequisites

- Docker
- Kubernetes Cluster (Optional)
- kubectl
- Anchore CLI

---

## Deploy Anchore

```bash
kubectl apply -f manifests/namespace.yaml

kubectl apply -f manifests/anchore-engine.yaml
```

---

## Verify Deployment

```bash
kubectl get pods -n anchore
```

---

## Scan an Image

```bash
./scripts/scan-image.sh nginx:latest
```

---

## Generate SBOM

```bash
./scripts/generate-sbom.sh nginx:latest
```

---

## Example Findings

```text
Critical Vulnerabilities: 2

High Vulnerabilities: 5

Medium Vulnerabilities: 12

Low Vulnerabilities: 18
```

---

## Cleanup

```bash
./scripts/cleanup.sh
```

---

## Learning Outcomes

- Container Security
- DevSecOps
- SBOM Management
- Vulnerability Assessment
- Supply Chain Security

---

## References

- https://anchore.com/
- https://github.com/anchore
- https://docs.anchore.com/

---

## Author

Abhay Dandge

LinkedIn:
https://www.linkedin.com/in/abhaydandge/

GitHub:
https://github.com/abhay-dandge
