## 📌 Problem Statement
Integrate a security scanner (SonarQube) into the CI/CD pipeline to enforce code quality and security checks. Provide the pipeline evidence and logs showing scan results.

---

## ⚙️ Solution Approach
- Added **SonarQube analysis** to the pipeline (begin → analyze → end).
- Enforced **Quality Gate** so the pipeline fails if thresholds aren’t met.
- Executed a pipeline run and captured:
  - Raw **scan logs** from the job.
  - **Dashboard** screenshot showing analysis summary & Quality Gate status.

---

## 📂 Files in this Folder
- `sonarqube_scan_logs.txt` — Captured console logs from the pipeline SonarQube step(s).
- `screenshots/`
  - `sonarqube_dashboard.png` — SonarQube project dashboard after the run.

---

## ✅ Proof of Execution
- **Logs:** See `sonarqube_scan_logs.txt` for scanner start, uploaded report, and Quality Gate result.
- **Screenshot:** See `screenshots/sonarqube_dashboard.png` for analysis metrics and overall status.

---
