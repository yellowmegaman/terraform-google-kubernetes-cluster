resource "google_container_cluster" "gke-cluster" {
  name                     = "${var.name}"
  location                 = "${var.zone}"
  remove_default_node_pool = true
  initial_node_count       = 1
  min_master_version       = "${var.kube_version}"
  enable_legacy_abac       = false
  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
