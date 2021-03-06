variable "project_name" {
  type        = string
  default     = "my-demo"
  description = "Name of the GCP project to create resources in."
}

variable "region" {
  type        = string
  default     = "us-east1"
  description = "GCP region to create resources in."
}

variable "zone" {
  type        = string
  default     = "us-east1-c"
  description = "GCP zone to create resources in."
}

variable "machine_type" {
  type        = string
  default     = "g1-small"
  description = "Machine type to use."
}

variable "datacenter" {
  type        = string
  default     = "us-east1"
  description = "Datacenter name to use."
}

variable "network" {
  type        = string
  default     = "my-network"
  description = "Network to use."
}

variable "consul_nodes" {
  default     = "1"
  description = "Number of Consul instances"
}

variable "bootstrap_consul_vm" {
  type        = bool
  default     = false
  description = "Initial Consul on VM bootstrap configurations"
}

variable "bootstrap_docker_consul_container" {
  type        = bool
  default     = true
  description = "Initial docker Consul and clients bootstrap configurations"
}

variable "consul_cluster_version" {
  default     = "0-0-1"
  description = "Custom Version Tag for Upgrade Migrations"
}

variable "gcp_health_check_cidr" {
  type    = list(string)
  default = ["35.191.0.0/16", "130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22"]
}

variable "allowed_inbound_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks to permit inbound Consul access from"
  default     = ["0.0.0.0/0"]
}