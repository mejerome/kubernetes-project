resource "google_service_account" "gke" {
  account_id   = var.account_id
  display_name = "GKE Service Account"
  project      = var.project
}

resource "google_container_cluster" "primary" {
  project                  = var.project
  name                     = var.cluster_name
  location                 = var.region
  remove_default_node_pool = true

  initial_node_count = 1
}

resource "google_container_node_pool" "primary" {
  name       = "my-node-pool"
  location   = var.region
  project    = var.project
  cluster    = google_container_cluster.primary.id
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.gke.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}