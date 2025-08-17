# ABB DevOps Technical Assessment

## 📌 Overview

This repository contains my solutions to the **ABB Software Engineer – DevOps Offline Technical Assessment**.
It covers CI/CD pipelines, Terraform-based AKS deployment, Helm chart deployment, monitoring, and security integrations.

The repo is structured task-wise for clarity, and each folder includes:

* Source code / configuration files
* Logs & screenshots of execution
* A mini-README explaining the task and approach

---

## 📂 Repository Structure

```
abb-devops-assessment/
│
├── 01-pipeline-debugging/
├── 02-aks-terraform-deployment/
├── 03-helm-deployment/
├── 04-secrets-management/
├── 05-security-scanning/
├── 06-monitoring-alerts/
├── ...
├── docs/
│   ├── architecture-diagram.png
│   └── monitoring-setup.png
└── README.md   <-- You are here
```

---

## 📑 Table of Contents

* [Task 1 – Pipeline Debugging](01-pipeline-debugging/README.md)
* [Task 2 – AKS Deployment with Terraform](02-aks-terraform-deployment/README.md)
* [Task 3 – Helm Deployment](03-helm-deployment/README.md)
* [Task 4 – Secrets Management](04-secrets-management/README.md)
* [Task 5 – Security Scanning (Trivy / SonarQube)](05-security-scanning/README.md)
* [Task 6 – Monitoring & Alerts](06-monitoring-alerts/README.md)
* [Task 7 – Kubernetes Networking Fix](07-kubernetes-networking/README.md)
* [Task 8 – Artifact Publishing](08-artifact-publishing/README.md)
* [Task 9 – CI/CD Pipeline with GitHub & Azure DevOps](09-cicd-pipeline/README.md)
* ... *(continue until Task 16)*

---

## ⚙️ Technologies & Tools Used

* **Cloud:** Azure (Terraform, AKS, ACR)
* **CI/CD:** Azure DevOps Pipelines, GitHub Actions
* **IaC:** Terraform, Helm
* **Security:** SonarQube, Trivy, Azure Security Center
* **Monitoring:** Azure Monitor, Alerts, Logs
* **Others:** Docker, Kubernetes

---

## 🌟 Highlights (Smartness Factor)

* Modular Terraform scripts with reusable variables.
* Helm chart templating with parameterized values.
* Automated image scanning with **Trivy** + code quality check with **SonarQube**.
* Monitoring setup in **Azure Monitor** with CPU & memory alerts.

---

## 📷 Key Screenshots

<p align="center">
  <img src="docs/pipeline-success.png" width="600" alt="Pipeline Success Screenshot">
</p>  

<p align="center">
  <img src="docs/aks-cluster.png" width="600" alt="AKS Cluster Screenshot">
</p>  

---

## 🚀 How to Navigate

* Each **task folder** has:

  * Config/code files
  * Execution proof (logs/screenshots)
  * Task-specific README.md

* Start from [Task 1](01-pipeline-debugging/README.md) and continue.
---

## 🙏 Acknowledgements

Thanks to **ABB Hiring Team** for this opportunity. Looking forward to discussing the solutions in the next round.
