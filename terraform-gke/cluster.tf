# module "gke" {
#   source = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"

#   project_id = var.project
#   name       = "${var.cluster_name}-${var.env_name}"

#   regional = true
#   region   = var.region

#   network    = module.network.network_name
#   subnetwork = module.network.subnets_names[0]

#   ip_range_pods     = var.pods_secondary_ip_range
#   ip_range_services = var.services_secondary_ip_range

#   node_pools = [
#     {
#       name               = "default-node-pool"
#       machine_type       = "e2-medium"
#       min_count          = var.min_node_count
#       max_count          = var.max_node_count
#       disk_size_gb       = var.disk_size_gb
#       auto_repair        = true
#       auto_upgrade       = true
#       initial_node_count = 1
#     },
#   ]
# }