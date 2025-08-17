## 📌 Problem Statement  
Retrieve secrets from Azure Key Vault within a CI/CD pipeline and use them securely during application deployment.  

---

## ⚙️ Solution Approach  
- Created an **Azure Key Vault** and stored sensitive values (e.g., DB connection string, API key).  
- Updated the pipeline (`cd-pipeline.yml`) to integrate with Azure Key Vault using the **AzureKeyVault@2** task.  
- Configured service connection with **Managed Identity/Service Principal** to authenticate securely.  
- Injected retrieved secrets into environment variables during deployment.  
- Verified that secrets were pulled correctly at runtime and used in application deployment without hardcoding.  

---

## 📂 Files in this Folder  
- `cd-pipeline.yml` → Updated pipeline with Key Vault integration.  
- `keyvault-setup.md` → Notes/commands for creating Key Vault and adding secrets.  
- **screenshots/** →  
  - `keyvault-created.png` → Key Vault with secrets stored.  
  - `pipeline-secret-injected.png` → Pipeline log showing secret retrieval.  
  - `deployment-using-secret.png` → Application deployed using secrets.  

---

## ✅ Proof of Execution  
- **Screenshot:** `screenshots/keyvault-created.png` → Azure Key Vault with secrets configured.  
- **Screenshot:** `screenshots/pipeline-secret-injected.png` → Pipeline logs confirming secrets fetched successfully.  
- **Screenshot:** `screenshots/deployment-using-secret.png` → Deployment completed using injected secrets.  
- **File:** `cd-pipeline.yml` → Contains Key Vault integration code.  

