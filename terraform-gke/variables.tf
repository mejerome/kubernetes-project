variable "project_id" {
  description = "The project ID to deploy GKE cluster"
}

variable "region" {
  description = "The region to deploy GKE cluster"
  default     = "us-central1"
}

variable "network_cidr" {
  description = "The CIDR range for the network"
  default     = "172.23.0.0/28"
}

variable "enable_autopilot" {
  description = "Enable GKE Autopilot"
  default     = true
}