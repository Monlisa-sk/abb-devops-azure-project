## 📌 Problem Statement
Identify cost-saving opportunities using **Azure Advisor** and propose optimizations for given resources (AKS, VMs, App Services, Storage, etc.).

---

## ⚙️ Solution Approach
- Reviewed recommendations from **Azure Advisor** and **Cost Management + Billing**.  
- Focused on **underutilized resources**, **sizing inefficiencies**, and **unused services**.  
- Proposed actionable optimizations with estimated savings.

---

## 💡 Recommendations

### 1. Virtual Machines
- **Issue:** Several VMs running at <5% CPU for >14 days.  
- **Recommendation:** Resize to a smaller SKU or stop/deallocate unused VMs.  
- **Expected Savings:** ~30–40% on compute spend.

### 2. Azure Kubernetes Service (AKS)
- **Issue:** Cluster node pools over-provisioned with low utilization.  
- **Recommendation:**  
  - Enable **Cluster Autoscaler** to scale nodes on demand.  
  - Use **Spot node pools** for non-production workloads.  
- **Expected Savings:** ~20% infra cost.

### 3. App Services
- **Issue:** Multiple App Service Plans at low utilization.  
- **Recommendation:** Consolidate apps into fewer plans, scale down SKU tiers.  
- **Expected Savings:** ~15%.

### 4. Storage Accounts
- **Issue:** Unused storage accounts and premium disks not attached to VMs.  
- **Recommendation:** Delete unattached disks; move rarely accessed blobs to **Cool/Archive tier**.  
- **Expected Savings:** ~25–50% on storage spend.

### 5. SQL / Databases
- **Issue:** Databases running at low DTU/vCore utilization.  
- **Recommendation:** Scale down SKU or switch to **serverless tier** for dev/test workloads.  
- **Expected Savings:** ~30%.

---


