# Kube-bench Demo

A hands-on demonstration of Kube-bench for auditing Kubernetes clusters against the CIS Kubernetes Benchmark.

## Project Overview

Kube-bench is an open-source security auditing tool developed by Aqua Security. It checks whether Kubernetes is deployed according to the CIS Kubernetes Benchmark.

This project demonstrates:

- Kubernetes security auditing
- CIS Benchmark compliance validation
- Security report generation
- Remediation of failed checks
- DevSecOps best practices

---

## Repository Structure

```text
kube-bench-demo/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── kube-bench-demo-guide.pdf
│   └── screenshots/
│
├── manifests/
│   └── job.yaml
│
├── reports/
│   ├── sample-report.txt
│   ├── failed-checks.txt
│   └── remediation-report.md
│
└── scripts/
    ├── run-scan.sh
    └── collect-results.sh

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
|      Kube-bench      |
+----------+-----------+
           |
           v
+----------------------+
| CIS Benchmark Scan   |
+----------+-----------+
           |
           v
+----------------------+
| Security Report      |
+----------------------+
```

---

## Prerequisites

- Kubernetes Cluster
- kubectl
- Cluster Admin Access

---

## Verify Cluster

```bash
kubectl get nodes
```
![kubectl get nodes](https://raw.githubusercontent.com/abhay-dandge/Kubernetes-Security-Tools/9e9076ac7f7431f83b859d858c7d0c829812f2be/Kube-bench/docs/screenshots/kubectl%20get%20nodes.png)


Expected Output:

```text
NAME       STATUS   ROLES           AGE
minikube   Ready    control-plane   10d
```

---

## Deploy Kube-bench

```bash
kubectl apply -f manifests/job.yaml
```
![kubectl apply -f manifests/job.yaml](https://raw.githubusercontent.com/abhay-dandge/Kubernetes-Security-Tools/9e9076ac7f7431f83b859d858c7d0c829812f2be/Kube-bench/docs/screenshots/kubectl%20apply%20-f%20manifests%20job.yaml.png)

---

## Verify Deployment

```bash
kubectl get jobs
kubectl get pods
```
![kubectl get jobs
kubectl get pods](https://raw.githubusercontent.com/abhay-dandge/Kubernetes-Security-Tools/9e9076ac7f7431f83b859d858c7d0c829812f2be/Kube-bench/docs/screenshots/kubectl%20get%20jobs.png)
---

## View Results

```bash
kubectl logs <pod-name>
```
![kubectl logs <pod-name>](https://raw.githubusercontent.com/abhay-dandge/Kubernetes-Security-Tools/9e9076ac7f7431f83b859d858c7d0c829812f2be/Kube-bench/docs/screenshots/kubectl%20logs.png)
---

## Save Results

```bash
kubectl logs <pod-name> > reports/sample-report.txt
```

---

## Example Output

```text
[PASS] API Server permissions
[PASS] Scheduler configuration
[FAIL] Anonymous Authentication
[WARN] Audit Logging
```

---

## Cleanup

```bash
kubectl delete -f manifests/job.yaml
```

---

## Learning Outcomes

- Kubernetes Security
- CIS Benchmarks
- Security Auditing
- Compliance Validation
- DevSecOps

---

## References

- https://github.com/aquasecurity/kube-bench
- https://www.cisecurity.org/benchmark/kubernetes
- https://kubernetes.io/docs/

---

## Author

### Abhay Dandge

LinkedIn:
https://www.linkedin.com/in/abhaydandge/

GitHub:
https://github.com/abhay-dandge
