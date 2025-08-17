## 📌 Problem Statement  
Scan container images for vulnerabilities using a security tool (e.g., Trivy) and provide the scan report with mitigation notes.  

---

## ⚙️ Solution Approach  
- Used **Trivy** to scan the container image stored in Azure Container Registry (ACR).  
- Configured the scan for **HIGH** and **CRITICAL** severity vulnerabilities.  
- Captured the scan results in a text report for submission.  
- Reviewed vulnerabilities and added notes on mitigations (e.g., base image upgrade, patching dependencies).  

---

## 📂 Files in this Folder  
- `container-scan-report.txt` → Detailed Trivy vulnerability scan report.  
- `mitigation-notes.md` → Notes on identified issues and possible fixes.  
- **screenshots/** →  
  - `trivy-scan-success.png` → Proof of Trivy scan execution.  
  - `scan-summary.png` → High-level summary of vulnerabilities detected.  

---

## ✅ Proof of Execution  
- **File:** `container-scan-report.txt` → Contains full scan results.  
- **File:** `mitigation-notes.md` → Explains remediation steps for detected issues.  
- **Screenshot:** `screenshots/trivy-scan-success.png` → Shows Trivy scan execution.  
- **Screenshot:** `screenshots/scan-summary.png` → Vulnerability summary for the image.  

