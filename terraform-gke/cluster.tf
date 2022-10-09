resource "google_service_account" "gke" {
  account_id   = var.account_id
  display_name = "GKE Service Account"
  project      = var.project
}

resource "google_container_cluster" "primary" {
  project            = var.project
  name               = var.cluster_name
  location           = var.region
  initial_node_count = 1
  
  ip_allocation_policy {
    
  }

  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.gke.email
    machine_type    = var.machine_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  network          = module.vpc.network_name
  subnetwork       = module.vpc.subnets_names[0]
  enable_autopilot = var.enable_autopilot

  depends_on = [
    google_service_account.gke
  ]
}