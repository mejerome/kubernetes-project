variable "project" {
  description = "The ID of the project in which the resources will be provisioned."
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
}

variable "account_id" {
  description = "The ID of the service account to create"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "machine_type" {
  description = "The machine types to use for the cluster"
  type        = string
  default     = "e2-medium"
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

variable "enable_autopilot" {
  description = "Enable autopilot mode"
  type        = bool
  default     = false
}
