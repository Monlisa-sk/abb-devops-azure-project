## 📌 Problem Statement
Debug a failing Azure DevOps pipeline with environment variable configuration errors and provide the fixed pipeline file and proof of successful execution.

---

## ⚙️ Solution Approach
- Reviewed failing run logs to locate **variable reference errors**.
- Corrected **variable syntax** and **scope** in `azure-pipeline.yml`.
- Re-ran the pipeline; verified **Build → Test → (optional) Package** completed.
- Captured **successful run screenshot** as proof.

---

## 📂 Files in this Folder
- `azure-pipeline.yml` — **Fixed** pipeline definition.
- `screenshots/`
  - `cicd-pipeline-success.png` — Successful CI/CD run.

---

## ✅ Proof of Execution
![Pipeline Success](screenshots/cicd-pipeline-success.png)

---
