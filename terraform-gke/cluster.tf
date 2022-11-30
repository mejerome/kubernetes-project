resource "google_container_cluster" "native" {
  provider         = google-beta
  name             = "${var.project_id}-cluster"
  project          = var.project_id
  location         = var.region
  network          = google_compute_network.main_network.id
  subnetwork       = google_compute_subnetwork.gke-subnet.id
  enable_autopilot = var.enable_autopilot
  ip_allocation_policy {
  }
}