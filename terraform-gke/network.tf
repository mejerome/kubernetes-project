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
}