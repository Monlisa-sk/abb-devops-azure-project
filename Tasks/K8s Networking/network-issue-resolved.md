# AKS Issues & Resolutions

## 1. Networking Issue (Pods unable to reach external services)
**Symptoms:**  
- Pods failed health checks and external API calls.  
- Errors like `Temporary failure in name resolution` and probe timeouts in `kubectl describe`.  

**Root Cause:**  
- Misconfigured **CoreDNS**.  
- Missing **NetworkPolicy egress rules** for DNS (53) and HTTPS (443).  

**Resolution:**  
- Fixed CoreDNS config and restarted pods.  
- Added NetworkPolicy rules to allow DNS + HTTPS egress.  

---

## 2. ImagePullBackOff Issue
**Symptoms:**  
- Pod events showed:  
  `Error: ImagePullBackOff`  
  `Back-off pulling image "devopscontainerreg.azurecr.io/dotnet-sample:<tag>"`.  

**Root Cause:**  
- Image tag not present in ACR, or AKS not authorized to pull images.  

**Resolution:**  
- Pushed the correct image/tag to ACR.  
- Attached ACR to AKS (`az aks update --attach-acr`).  
- Created `imagePullSecret` and referenced it in Helm `values.yaml`.  
- Re-deployed → pods pulled images successfully.  

---

## 3. Network Issue Resolved (Validation & Prevention)
**Validation:**  
- Pods resolved DNS and accessed external endpoints.  
- Health probes passed; pods in **Running** state.  

**Prevention:**  
- Keep CoreDNS config under version control.  
- Maintain baseline NetworkPolicy with DNS + HTTPS egress.  
- Push images to ACR before deployment and attach ACR to AKS.  
- Monitor with Azure Monitor alerts for CoreDNS failures and pod image pull errors.

---

✅ **Final Status:**  Image pull issues resolved.
