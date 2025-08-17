## 📌 Problem Statement
Containerize the application, build the Docker image, and push it to Azure Container Registry (ACR). Provide build and push logs as proof.

---

## ⚙️ Solution Approach
- Authored a production-ready **Dockerfile** (multi-stage build to keep final image minimal).
- Built the Docker image locally/within pipeline and tagged as:  
  `devopscontainerreg.azurecr.io/dotnet-sample:<tag>`
- Logged in to **Azure Container Registry (ACR)** using `az acr login` or Azure DevOps service connection.
- Pushed the built image to ACR.
- Captured **build logs** and **push logs** as proof.

---

## 📂 Files in this Folder
- `Dockerfile` → Containerization specification for the application.  
- `docker-build-logs.txt` → Output logs from the Docker build process.  
- `acr-push-logs.txt` → Output logs from pushing image to ACR.  

---

## ✅ Proof of Execution
- **Build Log:** `docker-build-logs.txt` → Contains build steps, base image pulls, and `Successfully built <image-id>`.  
- **Push Log:** `acr-push-logs.txt` → Shows ACR authentication succeeded and manifest pushed with a digest hash.  

---
