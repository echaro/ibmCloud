# Look up the resource group by name
data "ibm_resource_group" "rg" {
  name = var.resource_group_name
}

# Create a VPC for the cluster
resource "ibm_is_vpc" "vpc" {
  name           = "${var.prefix}-vpc"
  resource_group = data.ibm_resource_group.rg.id
}

# Create a subnet in the target zone
resource "ibm_is_subnet" "subnet" {
  name                     = "${var.prefix}-subnet"
  vpc                      = ibm_is_vpc.vpc.id
  zone                     = var.zone
  total_ipv4_address_count = 256
  resource_group           = data.ibm_resource_group.rg.id
}

# Provision a VPC-based Kubernetes cluster
resource "ibm_container_vpc_cluster" "cluster" {
  name              = var.cluster_name
  vpc_id            = ibm_is_vpc.vpc.id
  kube_version      = var.kube_version != "" ? var.kube_version : null
  flavor            = var.worker_flavor
  worker_count      = var.worker_count
  resource_group_id = data.ibm_resource_group.rg.id

  zones {
    subnet_id = ibm_is_subnet.subnet.id
    name      = var.zone
  }
}
