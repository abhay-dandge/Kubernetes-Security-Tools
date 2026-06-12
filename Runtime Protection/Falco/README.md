# Falco Demo

A hands-on Kubernetes Runtime Security Monitoring project using Falco.

## Overview

Falco is an open-source cloud-native runtime security tool that detects unexpected application behavior, container anomalies, and Kubernetes threats.

Falco continuously monitors:

- Containers
- Kubernetes workloads
- Linux system calls
- Network activity
- File access
- Process execution

and generates alerts when suspicious activity is detected.

---

## Architecture

```text
+----------------------+
| Kubernetes Cluster   |
+----------+-----------+
           |
           v
+----------------------+
|        Falco         |
| Runtime Monitoring   |
+----------+-----------+
           |
           v
+----------------------+
| Security Events      |
+----------+-----------+
           |
           v
+----------------------+
| Alerts & Logs        |
+----------------------+
```

---

## Prerequisites

- Kubernetes Cluster
- kubectl
- Helm 3

---

## Install Falco

```bash
./scripts/install-falco.sh
```
<img width="1119" height="436" alt="image" src="https://github.com/user-attachments/assets/45ce943d-c0ef-4fd9-a226-cfb82c389ceb" />

---

## Verify Installation

```bash
kubectl get pods -n falco
```
<img width="921" height="107" alt="image" src="https://github.com/user-attachments/assets/029ff0b1-03ea-481e-883c-887d02594066" />

---

## Trigger Suspicious Activity

```bash
./scripts/trigger-alert.sh
```
<img width="918" height="512" alt="image" src="https://github.com/user-attachments/assets/8bd57218-9d73-4beb-bd78-a4bab727af3a" />

---

## View Alerts

```bash
kubectl logs -n falco -l app.kubernetes.io/name=falco
```
<img width="1346" height="94" alt="image" src="https://github.com/user-attachments/assets/1c77a3e8-9a15-4212-9467-1299355354bf" />

---

## Cleanup

```bash
./scripts/cleanup.sh
```

---

## Learning Outcomes

- Runtime Security
- Threat Detection
- Kubernetes Security
- Incident Response
- DevSecOps

---

## References

- https://falco.org
- https://github.com/falcosecurity/falco
- https://falco.org/docs/

---

## Author

Abhay Dandge

LinkedIn:
https://www.linkedin.com/in/abhaydandge/

GitHub:
https://github.com/abhay-dandge
