 ## 📌 Problem Statement  
Provision an Azure Kubernetes Service (AKS) cluster using Terraform and provide output logs/screenshots as proof of successful deployment.  

---

## ⚙️ Solution Approach  
- Wrote modular Terraform configuration:  
  - **main.tf** → Defines Resource Group, AKS cluster, and default node pool.  
  - **variables.tf** → Parameterized inputs like region, RG/cluster names, node size, and node count.  
  - **outputs.tf** → Captures outputs such as cluster name, resource group, and kubeconfig info.  
  - **providers.tf** → Configured `azurerm` provider with required features.  
- Authenticated with Azure CLI and set subscription context.  
- Executed the Terraform workflow:  
  ```bash
  terraform init
  terraform plan
  terraform apply -auto-approve | tee deployment.log
  

## 📂 Files in this Folder  

- `main.tf` → AKS cluster Terraform script.  
- `variables.tf` → Input variables for customization.  
- `outputs.tf` → Key cluster outputs.  
- `providers.tf` → Provider configuration.  
- `deployment.log` → Captured Terraform apply output.  
- **screenshots/** →  
  - `terraform-apply-success.png`  
  - `aks-nodes.png`
    

## ✅ Proof of Execution  

- **Screenshot:** `screenshots/terraform-apply-success.png` → Successful Terraform apply.  
- **Screenshot:** `screenshots/aks-nodes.png` → AKS nodes in Ready state after deployment.  
- **Log File:** `deployment.log` → Captured full output of `terraform apply`.  


