# Branching Strategy (Azure DevOps)

## Goals

* Short-lived branches, fast CI feedback
* Clear mapping of branches → environments
* Simple releases with SemVer tags (for prod traceability)

---

## Branch → Environment Mapping

| Ref/Branch                        | Purpose                      | Environment                                       |
| --------------------------------- | ---------------------------- | ------------------------------------------------- |
| `feature/<id>-<title>`            | New work, PR validation      | **Dev**                                           |
| `main`                            | Integration branch           | **Staging**                                       |
| `release/<major>.<minor>.<patch>` | Stabilize a specific version | **Staging → Prod**                                |
| `hotfix/<version>-<title>`        | Emergency prod fixes         | **Prod** *(out of scope for this project’s demo)* |

---

## Workflow

### 1) Feature → Dev

1. Branch from `main`: `feature/<id>-<title>`
2. Open PR → `feature` merged → **auto-deploy to Dev**
3. CI must pass: build/tests, lint, SonarQube, Trivy, Helm lint

### 2) Integrate on `main` → Staging

1. Create PR from **feature → main**
2. On merge to `main` → **auto-deploy to Staging**
3. Verify app health (readiness/liveness, logs, alerts)

### 3) Release → Staging & Prod

1. Cut a release branch from `main`: `release/1.4.0`
2. Only stabilization fixes via PR into `release/*`
3. On updates to `release/*` → **deploy to Staging**
4. When green, **create annotated tag** `v1.4.0` on the release commit
   Tag push → **deploy to Prod**

### 4) Hotfix → Prod

* Create `hotfix/<version>-<title>` from latest prod tag, PR back to `main` & `release/*`, tag `vX.Y.Z`.
* **Note:** Hotfix production rollout is **out of scope** for this project deliverable (documented only).

---

## Azure DevOps Policies (Minimum)

* **Protected branches:** `main`, `release/*`

  * No direct/force pushes
  * Require ≥1–2 reviewers (CODEOWNERS for critical paths)
  * Require passing checks: CI, SonarQube Quality Gate, Trivy (fail HIGH/CRITICAL), Helm lint
  * PR must be up-to-date with base before merge
* **Merge method:** Prefer **Squash** for clean history

---

## CI/CD Triggers (High-Level)

* **PRs to any branch** → run CI (build, test, lint, Sonar, Trivy, Helm lint)
* **Feature branch merges** → **Dev deploy**
* **`main` merges** → **Staging deploy**
* **`release/*` updates** → **Staging deploy**
* **Tags `v*`** (SemVer) → **Prod deploy**

> Keep env config in Helm values files:
>
> * `helmchart/values.yaml` (Dev)
> * `helmchart/values.staging.yaml`
> * `helmchart/values.prod.yaml`

---

