## 📌 Problem Statement
Investigate and resolve an AKS issue where pods cannot communicate with external services. Provide description of the issue, resolution steps, and logs/screenshots as proof.

---

## ⚙️ Solution Approach
- Collected pod details/events via **kubectl describe**.
- Reviewed logs/events for DNS timeouts and egress failures.
- Identified the root cause 
- Applied fixes .
- Re-tested connectivity and confirmed success.

---

## 📂 Files in this Folder
- `network-issue-resolved.md` — Root cause, resolution steps, and validation.
- `kubectl-describe.txt` — Output captured from `kubectl describe pod <pod> -n <ns>`.
- **screenshots/**
  - `kubectl_log_events.png` — Pod events/logs showing DNS/egress failures.
  - `kubectl_network_issue.png` — Symptom view (failing readiness/requests).

---

## ✅ Proof of Execution
- **File:** `network-issue-resolved.md` documents the issue and the applied fix.
- **Log File:** `kubectl-describe.txt` shows pre-fix events (ImagePull/BackOff, DNS, egress).
- **Screenshots:** 
  - `screenshots/kubectl_log_events.png` (errors before fix),
  - `screenshots/kubectl_network_issue.png` (symptom and post-fix confirmation).
