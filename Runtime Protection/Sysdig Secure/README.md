# Sysdig Secure Demo

A practical Kubernetes and Container Security project demonstrating runtime threat detection, vulnerability management, compliance monitoring, and cloud-native security using Sysdig Secure.

## Overview

Sysdig Secure provides:

- Container Vulnerability Scanning
- Runtime Threat Detection
- Kubernetes Security Monitoring
- Compliance Reporting
- Cloud Security Posture Management
- Incident Investigation

---

## Architecture

```text
+----------------------+
| Kubernetes Cluster   |
+----------+-----------+
           |
           v
+----------------------+
|    Sysdig Secure     |
+----------+-----------+
           |
    +------+------+
    |             |
    v             v
Vulnerability   Runtime
   Scanning     Detection
    |             |
    +------+------+
           |
           v
      Security Alerts
```

---

## Prerequisites

- Kubernetes Cluster
- kubectl
- Sysdig Secure Account
- Sysdig Agent Installed

---

## Deploy Demo Workload

```bash
kubectl apply -f manifests/nginx-deployment.yaml
```

---

## Generate Runtime Alert

```bash
./scripts/trigger-alert.sh
```

---

## Review Findings

- Runtime Events
- Vulnerability Reports
- Compliance Reports

---

## Learning Outcomes

- Runtime Security
- Vulnerability Management
- Kubernetes Security
- DevSecOps
- Incident Response

---

## References

- https://sysdig.com
- https://docs.sysdig.com

---

## Author

Abhay Dandge
