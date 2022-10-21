module "gke" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-public-cluster"

  project_id = var.project
  name       = var.cluster_name
  region     = var.region

  network    = module.vpc.network_name
  subnetwork = module.vpc.subnets_names[0]

  ip_range_pods                   = "gke-pods"
  ip_range_services               = "gke-services"
  release_channel                 = "REGULAR"
  enable_vertical_pod_autoscaling = true
}