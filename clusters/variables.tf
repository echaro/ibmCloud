variable "ibmcloud_api_key" {
  description = "IBM Cloud API key used to authenticate with IBM Cloud."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "IBM Cloud region where the cluster will be created (e.g. us-south, eu-gb)."
  type        = string
  default     = "us-south"
}

variable "resource_group_name" {
  description = "Name of the IBM Cloud resource group for the cluster."
  type        = string
  default     = "Default"
}

variable "prefix" {
  description = "Prefix prepended to all resource names."
  type        = string
  default     = "tf-demo"
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster."
  type        = string
  default     = "my-tf-cluster"
}

variable "kube_version" {
  description = "Kubernetes version for the cluster. Leave empty to use the IBM Cloud default."
  type        = string
  default     = ""
}

variable "worker_flavor" {
  description = "Machine type (flavor) for cluster worker nodes."
  type        = string
  default     = "bx2.4x16"
}

variable "worker_count" {
  description = "Number of worker nodes in the default worker pool."
  type        = number
  default     = 2
}

variable "zone" {
  description = "Zone within the region where the cluster worker nodes are placed."
  type        = string
  default     = "us-south-1"
}
