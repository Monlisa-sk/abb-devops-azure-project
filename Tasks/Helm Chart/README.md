## 📌 Problem Statement
Package the application as a Helm chart and deploy it to AKS using parameterized values.  
Provide the Helm chart, values file, and deployment logs/screenshots as proof.

---

## ⚙️ Solution Approach
- Created a **Helm chart** for the .NET sample application under `dotnet-sample-project/helmchart`.
- Parameterized runtime configuration in `values.yaml`.
- Deployed the chart to AKS using `helm upgrade --install`.
- Captured Helm logs during deployment.

---

## 📂 Files in this Folder
- `dotnet-sample-project/helmchart/` → Helm chart (Chart.yaml, templates, helpers).  
- `dotnet-sample-project/helmchart/values.yaml` → Custom values for image, replicas, ports, env, probes.  
- `helm-deployment.logs.txt` → Logs from Helm deployment/upgrade.  

---

## ✅ Proof of Execution
- **Helm Chart:** `dotnet-sample-project/helmchart/` shows the chart source (Chart.yaml, templates, helpers).  
- **Values File:** `dotnet-sample-project/helmchart/values.yaml` contains runtime parameters used during deployment.  
- **Log File:** `helm-deployment.logs.txt` shows Helm upgrade/install execution.  

---
