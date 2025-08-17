## 📌 Problem Statement
Provision an AKS cluster integrated with Log Analytics via Terraform, and prove it with Terraform apply logs.

---

## 📂 Files in this Folder
- [terraform-script.tf](../../Terraform/terraform-script/) — Single-file Terraform config (provider, variables, resources, and outputs combined).
- [deployment_logs.txt](../../Terraform/deployment_logs.txt) — Raw output captured from `terraform apply`.

---

## ✅ Proof of Execution
- **Log file:** `deployment_logs.txt` contains the full apply output confirming resource creation (resource group, Log Analytics workspace, AKS, and addon enablement).


---

## 🔎 What this script does
- Creates/uses a Resource Group.
- Creates a **Log Analytics Workspace**.
- Creates **AKS** and enables the **Container Insights (OMS/monitoring addon)** by attaching the workspace.
- Exposes useful **outputs** (cluster name, RG, workspace id).
