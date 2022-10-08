variable "project" {
  description = "The ID of the project in which the resources will be provisioned."
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "env_name" {
  description = "The name of the environment"
  type        = string
}

variable "network_name" {
  description = "The name of the network"
  type        = string
}

variable "subnet_1_name" {
  description = "The name of the internet facing subnet"
  type        = string
}

variable "subnet_2_name" {
  description = "The name of the private subnet"
  type        = string
}

variable "subnet_1_cidr" {
  description = "The IP range of the internet facing subnet"
  type        = string
}

variable "subnet_2_cidr" {
  description = "The IP range of the private subnet"
  type        = string
}

variable "pods_secondary_ip_range_name" {
  description = "The name of the pods secondary IP range"
  type        = string
}

variable "pods_secondary_ip_range" {
  description = "The IP range of the pods secondary IP range"
  type        = string
}

variable "services_secondary_ip_range_name" {
  description = "The name of the services secondary IP range"
  type        = string
}

variable "services_secondary_ip_range" {
  description = "The IP range of the services secondary IP range"
  type        = string
}

variable "min_node_count" {
  description = "The minimum number of nodes in the cluster"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "The maximum number of nodes in the cluster"
  type        = number
  default     = 3
}

variable "disk_size_gb" {
  description = "The size of the disk in GB"
  type        = number
  default     = 30
}
