resource "google_container_cluster" "gke-cluster" {
  name                     = var.name
  location                 = var.zone
  remove_default_node_pool = true
  initial_node_count       = 1
  min_master_version       = var.kube_version
  enable_legacy_abac       = false
  maintenance_policy {
    daily_maintenance_window {
      start_time = var.maint_window
    }
  }
  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = var.client_cert
    }
  }
}
