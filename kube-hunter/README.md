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
│   └── screenshots/*
│
├── reports/
│   ├── scan-report.txt
│   ├── high-severity-findings.txt
│   ├── medium-severity-findings.txt
│   └── remediation-report.md
│
└── scripts/
    ├── deploy-hunter.sh
    ├── collect-results.sh
    └── cleanup.sh


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
kubectl apply -f manifests/namespace.yaml
kubectl apply -f manifests/job.yaml
```
<img width="1074" height="134" alt="kubectl apply manifestsnamespace-yaml" src="https://github.com/user-attachments/assets/b547b981-8b51-4de2-ab5c-5e79d6576712" />


---

## Verify Deployment

```bash
kubectl get pods
```
<img width="987" height="123" alt="kubectl get pods" src="https://github.com/user-attachments/assets/d2f8001d-867c-417e-98fd-b8cbb131a522" />

---

## View Results

```bash
kubectl logs <pod-name>
```
<img width="853" height="393" alt="kubectl logs  pod-name" src="https://github.com/user-attachments/assets/4285c549-59c7-4cee-8a37-acac7ebe1f76" />

<img width="649" height="540" alt="image" src="https://github.com/user-attachments/assets/8dc85a59-5485-4b89-ba40-86cb2c6f1d76" />


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
