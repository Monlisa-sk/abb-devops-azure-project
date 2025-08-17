# Continuous Integration (CI)

## 📌 Problem Statement
Set up a Continuous Integration (CI) pipeline in Azure DevOps for a sample application to ensure code is built and tested automatically after each commit.

---

## ⚙️ Solution Approach
- Defined the CI pipeline in **azure_pipeline.yml**.
- Configured pipeline tasks to:
  - Restore dependencies
  - Build the application
  - Run unit tests
- Triggered the pipeline on **every push/PR** to `main`.
- Verified execution with successful build + test runs.

---

## 📂 Files in this Folder
- [azure_pipeline.yml](../../dotnet-sample-project/azure-pipeline.yml) → CI pipeline definition.  
- `build_logs.txt` → Captured logs from Azure DevOps build run.  
- `test_reports.txt` → Unit test execution results.  
- `screenshots/`  
  - `cicd-pipeline-success.png` → Pipeline run proof.

---

## ✅ Proof of Execution
- **Logs:**  
  - `build_logs.txt` shows successful compilation & build output.  
  - `test_reports.txt` shows executed and passed unit tests.  
- **Screenshot:**  
  ![CICD Pipeline Success](screenshots/cicd-pipeline-success.png)
