## 📌 Problem Statement  
Debug a failing Azure DevOps pipeline with environment variable configuration errors and provide the fixed pipeline file and proof of successful execution.  

---

## ⚙️ Solution Approach  
- Investigated the failing Azure DevOps pipeline by analyzing build logs.  
- Identified incorrect environment variable references as the root cause.  
- Corrected variable syntax and ensured proper scoping in the pipeline file.  
- Re-ran the pipeline successfully, verifying both build and deployment stages.  
- Captured the updated pipeline YAML and execution screenshots/logs as proof.  

---

## 📂 Files in this Folder  
- `fixed-pipeline.yml` → Corrected pipeline definition file.  
- `debugging-notes.md` → Notes on the root cause and fixes applied.  
- `pipeline-logs.txt` → Captured logs from the successful pipeline run.  
- **screenshots/** →  
  - `pipeline-fixed.png` → Pipeline run showing successful execution.  
  - `before-error.png` → (Optional) Screenshot of the original failure for reference.  

---

## ✅ Proof of Execution  
- **File:** `fixed-pipeline.yml` → Fixed pipeline with correct environment variable configuration.  
- **Log File:** `pipeline-logs.txt` → Shows pipeline executed successfully without errors.  
- **Screenshot:** `screenshots/pipeline-fixed.png` → Pipeline execution succeeded.  
- **Screenshot:** `screenshots/before-error.png` → Original pipeline failure (for reference).  

