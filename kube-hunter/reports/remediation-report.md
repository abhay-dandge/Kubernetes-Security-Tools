# Remediation Report
<img width="645" height="550" alt="image" src="https://github.com/user-attachments/assets/c528f4df-d621-4cb5-af21-4407edbe367b" />

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
