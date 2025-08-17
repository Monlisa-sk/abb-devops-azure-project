## 📌 Problem Statement
Retrieve secrets from Azure Key Vault within a CI/CD pipeline and use them securely during application deployment.

---

## ⚙️ Solution Approach
- Integrated **Azure Key Vault** into the deployment pipeline via `AzureKeyVault@2`.
- Authenticated using a secure **service connection**.
- Mapped pulled secrets to **environment variables** only at runtime.
- Consumed these env vars during the deploy step (no hardcoding in repo).

---

## 📂 Files in this Folder
- [azure_pipeline.yml](../../dotnet-sample-project/azure-pipeline.yml) — Pipeline with Key Vault integration and secretconsumption.
- `Pre-job AzureKeyVault.txt` — Pre-job logs confirming Key Vault task initialization.
- `AzureKeyVault.txt` — Logs showing secrets retrieved and used in deployment steps.

---

## ✅ Proof of Execution
- **Pre-job logs:** `Pre-job AzureKeyVault.txt` show Key Vault preparation.
- **Runtime logs:** `AzureKeyVault.txt` shows `AzureKeyVault@2` success and subsequent steps using env vars sourced from KV.
- **Pipeline file:** `azure-pipeline.yml` contains the live integration used for the run.

---

## 🔐 Notes
- Secrets never printed in plaintext; logs show masked values (***).
- Access governed by KV **RBAC**.
