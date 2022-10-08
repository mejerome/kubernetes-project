module "vpc" {
  source = "terraform-google-modules/network/google"

  project_id   = var.project
  network_name = var.network_name
  mtu          = 1460

  subnets = [
    {
      subnet_name   = var.subnet_1_name
      subnet_ip     = var.subnet_1_cidr
      subnet_region = var.region
    },
    {
      subnet_name   = var.subnet_2_name
      subnet_ip     = var.subnet_2_cidr
      subnet_region = var.region
    }
  ]

  secondary_ranges = {
    "${var.subnet_1_name}" = [
      {
        range_name    = var.pods_secondary_ip_range_name
        ip_cidr_range = var.pods_secondary_ip_range
      },
      {
        range_name    = var.services_secondary_ip_range_name
        ip_cidr_range = var.services_secondary_ip_range
      }
    ]

    "${var.subnet_2_name}" = []
  }
}