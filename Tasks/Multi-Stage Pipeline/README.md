## 📌 Problem Statement  
Create a multi-stage pipeline in Azure DevOps that handles deployments across multiple environments (e.g., Dev, QA, Prod) with environment-specific variables and validation gates.  

---

## ⚙️ Solution Approach  
- Implemented a multi-stage pipeline in `multi-stage-pipeline.yml`.  
- Defined **separate stages** for:  
  - **Dev Stage** → deploy to development environment.  
  - **QA Stage** → deploy to QA environment with approval gate.  
  - **Prod Stage** → final production deployment after successful QA.  
- Used **environment-specific variables** to control configurations (e.g., image tags, replicas, secrets).  
- Integrated deployment steps with AKS using Kubernetes manifests/Helm.  
- Captured pipeline run logs and screenshots showing successful progression across all stages.  

---

## 📂 Files in this Folder  
- `multi-stage-pipeline.yml` → Azure DevOps pipeline with Dev, QA, Prod stages.  
- `env-variables-dev.yml` → Environment variables for Dev.  
- `env-variables-qa.yml` → Environment variables for QA.  
- `env-variables-prod.yml` → Environment variables for Prod.  
- `deployment-logs.txt` → Consolidated logs from multi-stage pipeline run.  
- `screenshots/` →  
  - `multi-stage-dev-success.png` (Dev stage deployment)  
  - `multi-stage-qa-success.png` (QA stage approval & deployment)  
  - `multi-stage-prod-success.png` (Prod deployment)  

---

## ✅ Proof of Execution  
- **Dev stage** executed successfully and deployed application.  
  ![Dev Stage Success](screenshots/multi-stage-dev-success.png)  

- **QA stage** executed after approval, deployed application in QA environment.  
  ![QA Stage Success](screenshots/multi-stage-qa-success.png)  

- **Prod stage** executed successfully, confirming final release.  
  ![Prod Stage Success](screenshots/multi-stage-prod-success.png)  

---

