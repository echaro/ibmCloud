output "cluster_id" {
  description = "ID of the provisioned Kubernetes cluster."
  value       = ibm_container_vpc_cluster.cluster.id
}

output "cluster_name" {
  description = "Name of the provisioned Kubernetes cluster."
  value       = ibm_container_vpc_cluster.cluster.name
}

output "master_url" {
  description = "API server URL of the cluster master."
  value       = ibm_container_vpc_cluster.cluster.master_url
}

output "master_status" {
  description = "Status of the cluster master node."
  value       = ibm_container_vpc_cluster.cluster.master_status
}

output "vpc_id" {
  description = "ID of the VPC used by the cluster."
  value       = ibm_is_vpc.vpc.id
}
