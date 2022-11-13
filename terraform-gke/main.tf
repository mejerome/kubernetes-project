provider "google" {
  project = var.project
  region  = var.region
}

# Retrieve an access token as the Terraform runner
data "google_client_config" "provider" {}


provider "kubernetes" {
  host  = "https://${module.gke.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    module.gke.ca_certificate
  )
}