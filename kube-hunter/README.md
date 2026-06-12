# Kube-hunter Demo

A practical Kubernetes security assessment project using Kube-hunter.

## Overview

Kube-hunter is an open-source penetration testing tool for Kubernetes developed by Aqua Security.

It scans Kubernetes environments from an attacker's perspective and identifies:

- Exposed Dashboards
- Anonymous Access
- Open Kubelet Ports
- Information Disclosure
- Misconfigured Services
- Privilege Escalation Risks

---
## Repository Structure
```
kube-hunter-demo/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── manifests/
│   ├── job.yaml
│   └── namespace.yaml
│
├── docs/
│   ├── Kube-Hunter-Demo-Guide.pdf
│   ├── screenshots/
│   │   ├── cluster-overview.png
│   │   ├── hunter-deployment.png
│   │   ├── findings.png
│   │   └── remediation.png
│   │
│   └── presentation/
│       └── kube-hunter-demo.pptx
│
├── reports/
│   ├── scan-report.txt
│   ├── high-severity-findings.txt
│   ├── medium-severity-findings.txt
│   └── remediation-report.md
│
├── scripts/
│   ├── deploy-hunter.sh
│   ├── collect-results.sh
│   └── cleanup.sh
│
├── assets/
│   ├── architecture.png
│   └── workflow.png
│
└── examples/
    ├── sample-output.txt
    └── vulnerable-cluster-demo.md
```
---

## Architecture

```text
+----------------------+
| Kubernetes Cluster   |
+----------+-----------+
           |
           v
+----------------------+
|     Kube-hunter      |
+----------+-----------+
           |
           v
+----------------------+
| Vulnerability Scan   |
+----------+-----------+
           |
           v
+----------------------+
| Security Findings    |
+----------------------+
```

---

## Prerequisites

- Kubernetes Cluster
- kubectl
- Cluster Admin Access

---

## Deploy Kube-hunter

```bash
kubectl apply -f manifests/job.yaml
```

---

## Verify Deployment

```bash
kubectl get pods
```

---

## View Results

```bash
kubectl logs <pod-name>
```

---

## Example Findings

```text
[High] Dashboard Exposed

[Medium] Anonymous Authentication Enabled

[Low] Version Disclosure
```

---

## Collect Results

```bash
./scripts/collect-results.sh
```

---

## Cleanup

```bash
./scripts/cleanup.sh
```

---

## Learning Outcomes

- Kubernetes Security
- Offensive Security
- Vulnerability Assessment
- DevSecOps
- Threat Modeling

---

## References

- https://github.com/aquasecurity/kube-hunter
- https://kubernetes.io/docs/

---

## Author

Abhay Dandge

LinkedIn:
https://www.linkedin.com/in/abhaydandge/

GitHub:
https://github.com/abhay-dandge
