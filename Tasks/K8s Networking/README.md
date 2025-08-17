## 📌 Problem Statement  
Investigate and resolve an AKS issue where pods cannot communicate with external services. Provide description of the issue, resolution steps, and logs/screenshots as proof.  

---

## ⚙️ Solution Approach  
- Analyzed AKS pod networking and found that pods were unable to reach external services.  
- Used `kubectl describe pod` and `kubectl logs` to review pod events and error messages.  
- Identified root cause as a **network policy / DNS resolution issue**.  
- Applied resolution by updating network configuration (e.g., CoreDNS settings, NetworkPolicy rules).  
- Re-tested pod connectivity to external endpoints and confirmed success.  

---

## 📂 Files in this Folder  
- `network-issue-resolved.md` → Document describing the issue and resolution steps.  
- `kubectl-describe.txt` → Captured output from `kubectl describe pod`.  
- `kubectl-logs.txt` → Relevant logs showing networking errors.  
- **screenshots/** →  
  - `pod-error.png` → Initial failure showing pods unable to connect externally.  
  - `network-fix-applied.png` → Proof of configuration changes applied.  
  - `pod-success.png` → Proof of successful external connectivity after fix.  

---

## ✅ Proof of Execution  
- **File:** `network-issue-resolved.md` → Contains detailed description of problem + fix.  
- **Log File:** `kubectl-describe.txt` → Shows pod event logs before fix.  
- **Log File:** `kubectl-logs.txt` → Error logs confirming networking failure.  
- **Screenshot:** `screenshots/pod-error.png` → Pods failing external communication.  
- **Screenshot:** `screenshots/network-fix-applied.png` → Resolution applied.  
- **Screenshot:** `screenshots/pod-success.png` → Pods successfully connecting after fix.  

