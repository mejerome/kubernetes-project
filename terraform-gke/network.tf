module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0.1"

  project_id   = var.project
  network_name = var.network_name

  subnets = [
    {
      subnet_name   = var.subnet_name
      subnet_ip     = "10.10.0.0/17"
      subnet_region = var.region
    },
    {
      subnet_name   = "master-subnet"
      subnet_ip     = "10.60.0.0/17"
      subnet_region = var.region
    },
  ]
  secondary_ranges = {
    "${var.subnet_name}" = [
      {
        range_name    = "gke-pods"
        ip_cidr_range = "192.168.0.0/18"
      },
      {
        range_name    = "gke-services"
        ip_cidr_range = "192.168.64.0/18"
      }
    ]
  }
}