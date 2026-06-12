# Remediation Report

## Finding

Dashboard Exposed

### Risk

Cluster compromise.

### Remediation

- Enable RBAC
- Restrict dashboard access
- Use authentication
- Use network policies

### Status

Fixed

---

## Finding

Anonymous Authentication Enabled

### Remediation

```bash
--anonymous-auth=false
```

### Status

Fixed
