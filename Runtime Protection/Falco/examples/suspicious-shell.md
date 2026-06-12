# Suspicious Shell Activity

Run:

```bash
kubectl exec -it suspicious-pod -- sh
```

Expected Falco Alert:

```text
Terminal shell in container
```
