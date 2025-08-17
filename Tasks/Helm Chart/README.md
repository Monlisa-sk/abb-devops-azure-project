## 📌 Problem Statement
Package the application as a Helm chart and deploy it to AKS using parameterized values. Provide the packaged chart, values file, and deployment logs/screenshots as proof.

---

## ⚙️ Solution Approach
- Converted raw Kubernetes manifests into a **Helm chart** with templates and a parameterized `values.yaml`.
- Packaged the chart for distribution and reproducible installs.
- Deployed/updated the release to AKS using Helm.
- Captured Helm deployment logs and screenshots showing the release status and resources created.

---

## 📂 Files in this Folder
- `helm-chart/` → Helm chart source (Chart.yaml, templates/, values schema if used).  
- `helm-chart.tgz` → Packaged Helm chart artifact.  
- `values.yaml` → Parameter overrides for image tag, replicas, ports, env, etc.  
- `helm-deploy-logs.txt` → Captured output from the Helm install/upgrade.  
- **screenshots/** →  
  - `helm-upgrade-success.png` → Helm install/upgrade completed successfully.  
  - `release-status.png` → `helm status`/release details.  
  - `k8s-resources.png` → Deployed resources (pods/services) visible and running.  

---

## ✅ Proof of Execution
- **Log File:** `helm-deploy-logs.txt` → Shows successful Helm install/upgrade with rendered values.  
- **Screenshot:** `screenshots/helm-upgrade-success.png` → Confirmation of successful Helm action.  
- **Screenshot:** `screenshots/release-status.png` → Release status output.  
- **Screenshot:** `screenshots/k8s-resources.png` → Running pods/services created by the chart.

