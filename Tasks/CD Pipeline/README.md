## 📌 Problem Statement  
Extend the CI pipeline into a Continuous Deployment (CD) pipeline in Azure DevOps so that application changes are automatically built, tested, and deployed into the target environment.  

---

## ⚙️ Solution Approach  
- Started with the CI pipeline (`azure-devops-pipeline.yml`) which already included build + test steps.  
- Created a dedicated CD pipeline file `cd-pipeline.yml`.  
- Defined **three stages**:  
  1. **Build Stage** – Restored dependencies, compiled the application, created the container image.  
  2. **Test Stage** – Executed automated unit tests to ensure build quality before deployment.  
  3. **Deploy Stage** –  
     - Pulled the image from ACR.  
     - Deployed to AKS cluster using Kubernetes manifests.  
     - Verified running pods/services.  
- Confirmed pipeline flow: **Commit → Build → Test → Deploy → Application available**.  

---

## 📂 Files in this Folder  
- `cd-pipeline.yml` → Azure DevOps deployment pipeline definition.  
- `azure-devops-pipeline.yml` → CI pipeline (referenced for continuity).  
- `deployment-logs.txt` → Exported deployment logs from Azure DevOps.  
- `test-results.log` → Captured test execution results.  
- `k8s-deployment.yaml` → Manifest used for AKS deployment.  
- `screenshots/` →  
  - `ci-pipeline-success.png` (CI stage proof)  
  - `unit-tests-pass.png` (Test stage proof)  
  - `cd-pipeline-success.png` (Deployment pipeline run)  
  - `app-deployed.png` (Application running in AKS/Portal)  

---

## ✅ Proof of Execution  
- CI build + tests passed successfully.  
  ![Unit Tests Pass](screenshots/unit-tests-pass.png)  
- CD pipeline executed and deployed to AKS.  
  ![CD Pipeline Success](screenshots/cd-pipeline-success.png)  
- Application validated as running.  
  ![App Deployed](screenshots/app-deployed.png)  

---

 

