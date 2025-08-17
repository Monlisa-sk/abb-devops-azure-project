## 📌 Problem Statement  
Write a KQL (Kusto Query Language) query in Log Analytics to analyze AKS logs and provide results as proof.

---

## ⚙️ Solution Approach  
- AKS is connected to a **Log Analytics Workspace**.
- Authored a single KQL to surface:
  - **Error logs** (by namespace/pod/container, with sample message).
  - **Container restarts** (joins restart counts).
- Executed the query in Azure Portal → **Logs**.
- Exported the results to **CSV** and captured a **results screenshot**.

---

## 📂 Files in this Folder  
- `log-analytics-query.kql` — The KQL query used for analysis.  
- `query_results.csv` — Exported results from the Log Analytics query.  
- **screenshots/**  
  - `query_results_screenshot.png` — Screenshot of the query and results in Log Analytics.

---

## ✅ Proof of Execution  
- **File:** `log-analytics-query.kql` shows the exact query used.  
- **Screenshot:** `screenshots/query_results_screenshot.png` displays the query execution and returned rows.  
- **Data:** `query_results.csv` contains the exported tabular results from the run.

---
