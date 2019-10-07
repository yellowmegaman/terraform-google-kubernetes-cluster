variable "zone" {
	default     = "europe-west4-b"
	description = "Zone to locate cluster in"
}
variable "name" {
	default     = "gkepowered"
	description = "Cluster name"
}
variable "kube_version" {
	default     = "1.12.5-gke.5"
	description = "Desired GKE kubernetes version. Refer to https://cloud.google.com/kubernetes-engine/docs/release-notes"
}

variable "maint_window" {
	default     = "01:00"
	description = "Desired time to conduct maint operations"
}

variable "client_cert" {
	default     = "true"
	description = "Issue client_certificate true/false"
}

variable "istio_disabled" {
	default     = "true"
	description = "GKE istio disable/enable. Set to 'false' to enable"
}
