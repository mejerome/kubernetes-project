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

variable "network_name" {
  description = "The name of the network"
  type        = string
}

variable "subnet_name" {
  description = "The subnet name where gke is deployed"
  type        = string
}