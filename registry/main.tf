# Look up the resource group by name
data "ibm_resource_group" "rg" {
  name = var.resource_group_name
}

# Create a Container Registry namespace
resource "ibm_cr_namespace" "namespace" {
  name              = var.namespace_name
  resource_group_id = data.ibm_resource_group.rg.id
}

# Attach a retention policy to the namespace
resource "ibm_cr_retention_policy" "retention" {
  namespace       = ibm_cr_namespace.namespace.id
  images_per_repo = var.images_per_repo
}
