## 📌 Problem Statement  
Set up a Continuous Integration (CI) pipeline in Azure DevOps for a sample application to ensure code is built and tested automatically after each commit.  

---

## ⚙️ Solution Approach  
- Defined the CI pipeline in `azure-devops-pipeline.yml`.  
- Configured the pipeline to:  
  - Restore dependencies.  
  - Build the application.  
  - Run unit tests automatically.  
- Integrated the pipeline to trigger on every push/PR to the main branch.  
- Verified the pipeline execution through successful build + test runs.  

---

## 📂 Files in this Folder  
- `azure-devops-pipeline.yml` → CI pipeline definition.  
- `build-logs.txt` → Captured logs from Azure DevOps run.  
- `screenshots/` →  
  - `ci-pipeline-success.png`  

---

## ✅ Proof of Execution  
![CI Pipeline Success](screenshots/ci-pipeline-success.png)  

---



