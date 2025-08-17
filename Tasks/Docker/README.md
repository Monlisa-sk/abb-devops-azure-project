## 📌 Problem Statement
Containerize the application, build the Docker image, and push it to Azure Container Registry (ACR). Provide build and push logs as proof.

---

## ⚙️ Solution Approach
- Authored a production-ready **Dockerfile** (multi-stage to keep the final image small and fast to start).
- Built the container image and tagged it consistently (repo:tag).
- Authenticated to **Azure Container Registry (ACR)** and pushed the image.
- Captured **build logs** and **ACR push logs** as evidence of successful completion.

---

## 📂 Files in this Folder
- `Dockerfile` → Containerization specification for the application.
- `docker-build-logs.txt` → Captured output from the image build.
- `acr-push-logs.txt` → Captured output from pushing the image to ACR.

---

## ✅ Proof of Execution
- **Log File:** `docker-build-logs.txt` → Shows successful image build (e.g., “Successfully built …”).
- **Log File:** `acr-push-logs.txt` → Shows successful registry authentication and image push (manifests pushed and digest returned).

