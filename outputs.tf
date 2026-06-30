output "vpc_id" {
  description = "ID of the provisioned VPC."
  value       = ibm_is_vpc.vpc.id
}

output "vpc_name" {
  description = "Name of the provisioned VPC."
  value       = ibm_is_vpc.vpc.name
}

output "subnet_id" {
  description = "ID of the provisioned subnet."
  value       = ibm_is_subnet.subnet.id
}

output "resource_group_id" {
  description = "ID of the resource group used."
  value       = data.ibm_resource_group.rg.id
}
