## 📌 Problem Statement
Deploy the containerized application to Azure Kubernetes Service (AKS) using Kubernetes manifests and provide deployment logs/screenshots as proof.

---

## ⚙️ Solution Approach
- Prepared Kubernetes manifests to deploy the app to AKS.
- Used a `Deployment` for the app and a `Service` to expose it.
- Configured basic readiness/liveness probes and resource requests/limits (where applicable).
- Verified rollout status and application availability in the AKS cluster UI and via pod/service state.
- Captured deployment logs and screenshots as evidence of a successful rollout.

---

## 📂 Files in this Folder
- `deployment.yaml` → Kubernetes Deployment for the application.
- `service.yaml` → Kubernetes Service to expose the application (ClusterIP/LoadBalancer as applicable).
- `deployment-logs.txt` → Captured output/logs of the deployment run (rollout status, events).
- **screenshots/** →  
  - `pods-running.png` → Pods in **Running/Ready** state.  
  - `service-endpoint.png` → Service created and endpoints available.  
  - `rollout-success.png` → Successful rollout confirmation in AKS/portal.  

---

## ✅ Proof of Execution
- **Log File:** `deployment-logs.txt` → Shows successful creation/update and rollout of Deployment/Service.
- **Screenshot:** `screenshots/pods-running.png` → Pods running and Ready.
- **Screenshot:** `screenshots/service-endpoint.png` → Service active with endpoints.
- **Screenshot:** `screenshots/rollout-success.png` → Rollout completed successfully in AKS.

