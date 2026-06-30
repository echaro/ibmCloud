output "namespace_id" {
  description = "ID of the created Container Registry namespace."
  value       = ibm_cr_namespace.namespace.id
}

output "namespace_name" {
  description = "Name of the created Container Registry namespace."
  value       = ibm_cr_namespace.namespace.name
}

output "registry_url" {
  description = "Registry URL to use when pushing/pulling images."
  value       = "${var.region}.icr.io/${ibm_cr_namespace.namespace.name}"
}
