output "endpoint" {
  value = ["${google_container_cluster.gke-cluster.primary.endpoint}"]
}
output "name" {
  value = ["${google_container_cluster.gke-cluster.primary.name}"]
}
