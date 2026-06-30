variable "ibmcloud_api_key" {
  description = "IBM Cloud API key used to authenticate with IBM Cloud."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "IBM Cloud region where resources will be provisioned (e.g. us-south, eu-gb)."
  type        = string
  default     = "us-south"
}

variable "resource_group_name" {
  description = "Name of the IBM Cloud resource group where resources will be created."
  type        = string
  default     = "Default"
}

variable "prefix" {
  description = "Prefix to prepend to all resource names for easy identification."
  type        = string
  default     = "tf-demo"
}
