variable "ibmcloud_api_key" {
  description = "IBM Cloud API key used to authenticate with IBM Cloud."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "IBM Cloud region where the Container Registry is hosted (e.g. us-south, eu-gb)."
  type        = string
  default     = "us-south"
}

variable "resource_group_name" {
  description = "Name of the IBM Cloud resource group to associate the namespace with."
  type        = string
  default     = "Default"
}

variable "namespace_name" {
  description = "Name of the Container Registry namespace. Must be unique within the region."
  type        = string
  default     = "my-tf-namespace"
}

variable "images_per_repo" {
  description = "Maximum number of images to retain per repository. Use -1 for unlimited."
  type        = number
  default     = 10
}
