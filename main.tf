# Retrieve the existing resource group
data "ibm_resource_group" "rg" {
  name = var.resource_group_name
}

# Provision a Virtual Private Cloud (VPC)
resource "ibm_is_vpc" "vpc" {
  name           = "${var.prefix}-vpc"
  resource_group = data.ibm_resource_group.rg.id
}

# Provision a subnet inside the VPC
resource "ibm_is_subnet" "subnet" {
  name                     = "${var.prefix}-subnet"
  vpc                      = ibm_is_vpc.vpc.id
  zone                     = "${var.region}-1"
  total_ipv4_address_count = 256
  resource_group           = data.ibm_resource_group.rg.id
}
