resource "google_compute_network" "main_network" {
  project = var.project_id
  name    = "${var.project_id}-network"
}

resource "google_compute_subnetwork" "gke-subnet" {
  name          = "${var.project_id}-gke-subnet"
  ip_cidr_range = var.network_cidr
  network       = google_compute_network.main_network.id
  region        = var.region
  project       = var.project_id

  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = "192.168.1.0/24"
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = "192.168.64.0/22"
  }
}
