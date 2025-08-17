## 📌 Problem Statement
Enable monitoring for the AKS-based application and configure alerts (e.g., CPU and memory thresholds). Provide screenshots of Azure Monitor setup, alert rule configurations, and alert logs.

---

## ⚙️ Solution Approach
- Enabled/verified **Azure Monitor** integration for the AKS cluster and workload.
- Created alert rules for **High CPU** and **High Memory** thresholds on the target (cluster/node pool/pod, as applicable).
- Validated alert routing and observed alert history to confirm triggers were recorded.
- Captured screenshots of the Monitor blade, alert rule definitions, and alert logs as evidence.

---

## 📂 Files in this Folder
- **screenshots/** →  
  - `monitor-overview.png` → Azure Monitor/Insights view for the AKS resource.  
  - `alert-rule-cpu.png` → CPU threshold alert rule configuration.  
  - `alert-rule-memory.png` → Memory threshold alert rule configuration.  
  - `alert-history.png` → Alerts page showing fired/resolved entries.  
  - `fired-alert-details.png` → Details blade for a specific alert instance (timestamp, severity, signal).

---

## ✅ Proof of Execution
- **Screenshot:** `screenshots/monitor-overview.png` → Monitoring enabled for AKS with metrics visible.  
- **Screenshot:** `screenshots/alert-rule-cpu.png` → CPU alert rule configured with threshold/aggregation and scope.  
- **Screenshot:** `screenshots/alert-rule-memory.png` → Memory alert rule configured similarly.  
- **Screenshot:** `screenshots/alert-history.png` → Alert log showing triggered alerts.  
- **Screenshot:** `screenshots/fired-alert-details.png` → Detailed proof of an alert firing (properties and timeline).

