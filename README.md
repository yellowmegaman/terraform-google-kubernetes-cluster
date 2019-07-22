# GKE kubernetes cluster with only RBAC auth

Terraform module for GKE kubernetes cluster.
RBAC only, no legacy endpoints or basic auth.

Usage

```
module "cluster" {
  source       = "github.com/yellowmegaman/terraform-google-kubernetes-cluster"
  zone         = "europe-west4-b"
  name         = "devcluster"
  kube_version = "1.12.8-gke.10"
}
```

Configuration above will:
- spawn GKE cluster without nodes
