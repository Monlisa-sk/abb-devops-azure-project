## 📌 Problem Statement  
Integrate a security scanner (e.g., SonarQube or similar) into the CI/CD pipeline to enforce code quality and security checks. Provide the pipeline definition and logs showing scan results.  

---

## ⚙️ Solution Approach  
- Enhanced the pipeline with a **SonarQube integration** step.  
- Configured `sonar-scanner` in the pipeline YAML to analyze source code for bugs, vulnerabilities, and code smells.  
- Set up a **quality gate** in SonarQube so that builds fail if thresholds are not met.  
- Ran the pipeline and confirmed the scan results in both pipeline logs and the SonarQube dashboard.  

---

## 📂 Files in this Folder  
- `security-pipeline.yml` → Updated pipeline definition with SonarQube scanning stage.  
- `sonarqube-project-properties.txt` → (Optional) Config used for SonarQube project key, name, and settings.  
- `security-scan-logs.txt` → Captured pipeline logs showing scan execution and results.  
- **screenshots/** →  
  - `sonarqube-dashboard.png` → SonarQube dashboard showing analysis results.  
  - `pipeline-security-success.png` → Pipeline run including SonarQube scan step.  

---

## ✅ Proof of Execution  
- **File:** `security-pipeline.yml` → Pipeline includes SonarQube integration.  
- **Log File:** `security-scan-logs.txt` → Shows the SonarQube scan execution during pipeline run.  
- **Screenshot:** `screenshots/pipeline-security-success.png` → Pipeline successfully executed with scan step.  
- **Screenshot:** `screenshots/sonarqube-dashboard.png` → SonarQube dashboard displaying code analysis and quality gate status.  

