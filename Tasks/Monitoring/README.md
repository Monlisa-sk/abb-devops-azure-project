## 📌 Problem Statement
Enable monitoring for the AKS-based application and configure alerts (e.g., CPU and memory thresholds). Provide screenshots of Azure Monitor setup, alert rule configurations, and alert logs.

---

## ⚙️ Solution Approach
- Verified **Container Insights** is enabled for the AKS cluster (Log Analytics + Azure Monitor).
- Created alert rules for **High CPU** and **High Memory** at the appropriate scope (cluster/node pool/pod).
- Configured **action groups** to send email notifications.
- Validated alerts by observing a triggered alert and confirming email notification delivery.

---

## 📂 Files in this Folder
- **screenshots/**  
  - `container-insights.png` — AKS **Container Insights** overview showing cluster/workload health.  
  - `alert-rules.png` — Azure Monitor **Alert rules** list showing configured CPU/Memory alerts.  
  - `alert-rule-details.png` — Detailed configuration of an alert rule (scope, condition, threshold, evaluation).  
  - `alert-triggered.png` — Evidence of an alert **fired** (Monitor → Alerts → Fired).  
  - `email-alert-triggered.png` — **Email notification** received for the fired alert (from the action group).

---

## ✅ Proof of Execution
- **Monitoring Enabled:** `screenshots/container-insights.png` displays active metrics/health for the AKS cluster via Container Insights.  
- **Alert Rules Configured:** `screenshots/alert-rules.png` lists CPU/Memory alert rules; `screenshots/alert-rule-details.png` shows the exact threshold and aggregation settings.  
- **Alert Fired:** `screenshots/alert-triggered.png` shows a triggered alert instance with timestamp and severity.  
- **Notification Working:** `screenshots/email-alert-triggered.png` confirms the email action group delivered the alert notification.

---

