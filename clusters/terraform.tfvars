# ============================================================
# terraform.tfvars — local variable values
# DO NOT commit this file to version control.
# ============================================================

ibmcloud_api_key    = "<YOUR_IBMCLOUD_API_KEY>"
region              = "us-south"
resource_group_name = "Default"
prefix              = "tf-demo"
cluster_name        = "my-tf-cluster"
kube_version        = ""
worker_flavor       = "bx2.4x16"
worker_count        = 2
zone                = "us-south-1"
