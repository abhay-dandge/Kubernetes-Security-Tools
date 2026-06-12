# Vulnerable Cluster Demonstration

This document demonstrates intentionally vulnerable Kubernetes configurations used for learning purposes.

## Vulnerability 1

Anonymous Authentication Enabled

```bash
--anonymous-auth=true
```

## Vulnerability 2

Dashboard Exposed

Service Type:

```yaml
type: LoadBalancer
```

## Expected Findings

- High Severity Dashboard Exposure
- Medium Severity Anonymous Access
