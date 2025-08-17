# ABB DevOps Technical Assessment

## 📌 Overview

This repository contains my solutions to the **ABB Software Engineer – DevOps Offline Technical Assessment**.
It covers CI/CD pipelines, Terraform-based AKS deployment, Helm chart deployment, monitoring, and security integrations.

The repo is structured task-wise for clarity, and each folder includes:
* Source code / configuration files
* Logs & screenshots of execution
* A mini-README explaining the task and approach

---

## 📑 Table of Contents

| Task                        | Folder Link                                                      | What I Completed                                                                                                               |
| --------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| Branching and Workflow      | [Branching & Workflow](tasks/Tasks/Branching%20%26%20Workflow)    | Defined a branching strategy (`branching-strategy.md`) and demonstrated feature → PR → merge flow with screenshots             |
| CI Pipeline                 | [CI Pipeline](tasks/02-ci-pipeline/README.md)                    | Created an Azure DevOps CI pipeline (`azure-devops-pipeline.yml`) with automated build + unit tests; added build logs as proof |
| CD Pipeline                 | [CD Pipeline](tasks/03-cd-pipeline/README.md)                    | Extended the CI pipeline into CD (`cd-pipeline.yml`) for application deployment, with logs + release screenshots               |
| Multi-Stage Pipeline        | [Multi-Stage Pipeline](tasks/04-multi-stage-pipeline/README.md)  | Implemented a multi-stage pipeline (`multi-stage-pipeline.yml`) covering Dev → QA → Prod with environment variables            |
| Terraform AKS Deployment    | [Terraform AKS](tasks/05-aks-terraform-deployment/README.md)     | Wrote modular Terraform (`main.tf`, `variables.tf`, `outputs.tf`) to provision AKS; included deployment logs & state outputs   |
| Secrets Management          | [Secrets Management](tasks/06-secrets-management/README.md)      | Integrated Azure Key Vault into pipeline; retrieved secrets securely during deployment (logs + updated YAML included)          |
| Dockerizing Applications    | [Docker](tasks/07-dockerizing-applications/README.md)            | Wrote optimized `Dockerfile`, built & tested image, pushed to ACR; attached build logs & push confirmation                     |
| Kubernetes Deployment       | [Kubernetes](tasks/08-kubernetes-deployment/README.md)           | Deployed container to AKS using `deployment.yaml`; validated pods/services and captured kubectl logs + screenshots             |
| Helm Chart                  | [Helm Chart](tasks/09-helm-chart/README.md)                      | Converted raw YAML into Helm chart, parameterized with `values.yaml`, and deployed using `helm upgrade --install`              |
| Monitoring Setup            | [Monitoring](tasks/10-monitoring-setup/README.md)                | Enabled Azure Monitor for AKS; created CPU/memory alerts and added screenshots of alert rules & trigger logs                   |
| Log Query                   | [Log Query](tasks/11-log-query/README.md)                        | Wrote KQL queries for Log Analytics to capture container/pod logs; attached `.kql` script + screenshot of query results        |
| Pipeline Security           | [Pipeline Security](tasks/12-pipeline-security/README.md)        | Enhanced pipeline with SonarQube quality gate; integrated static analysis into CI, with logs and pass/fail proof               |
| Secure Container Images     | [Image Scanning](tasks/13-secure-container-images/README.md)     | Added Trivy container scan; generated `container-scan-report.txt`, analyzed results, and documented mitigations                |
| Pipeline Debugging          | [Pipeline Debugging](tasks/14-pipeline-debugging/README.md)      | Fixed failing Azure DevOps pipeline by correcting env variables; re-ran successfully with logs + success screenshot            |
| Kubernetes Networking Issue | [K8s Networking](tasks/15-kubernetes-networking-issue/README.md) | Diagnosed pod external connectivity issue; documented root cause + fix in `network-issue-resolved.md` with kubectl logs        |
| Cost Optimization           | [Cost Optimization](tasks/16-cost-optimization/README.md)        | Reviewed Azure resource usage and suggested cost-saving measures; documented findings in `cost-optimization.md`                |


---

## ⚙️ Technologies & Tools Used

* **Cloud:** Azure (Terraform, AKS, ACR)
* **CI/CD:** Azure DevOps Pipelines, GitHub Actions
* **IaC:** Terraform, Helm
* **Security:** SonarQube, Trivy, Azure Security Center
* **Monitoring:** Azure Monitor, Alerts, Logs
* **Others:** Docker, Kubernetes

---

## 📷 Key Screenshots

<p align="center">
  <img src="docs/pipeline-success.png" width="600" alt="Pipeline Success Screenshot">
</p>  

<p align="center">
  <img src="docs/aks-cluster.png" width="600" alt="AKS Cluster Screenshot">
</p>  

---

## Acknowledgements

Thanks to **ABB Hiring Team** for this opportunity. Looking forward to discussing the solutions in the next round.
