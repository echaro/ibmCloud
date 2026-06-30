# IBM Cloud – Terraform Getting Started

Terraform configuration files based on the [IBM Cloud Provider for Terraform – Getting Started](https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-getting-started) tutorial.

> **Note:** These files are for review/study purposes. Fill in `terraform.tfvars` with real values before running `terraform apply`.

## File structure

| File | Purpose |
|---|---|
| `versions.tf` | Terraform version constraint and IBM provider source/version pin |
| `providers.tf` | IBM Cloud provider configuration (reads credentials from variables) |
| `variables.tf` | Input variable declarations with descriptions and defaults |
| `terraform.tfvars` | Local variable values — **never commit this file** |
| `main.tf` | Resource definitions (VPC + subnet example) |
| `outputs.tf` | Output values exposed after `terraform apply` |

## Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform/install) >= 1.0.0
- An [IBM Cloud API key](https://cloud.ibm.com/iam/apikeys)

## Usage

```bash
# 1. Copy and fill in your credentials
cp terraform.tfvars.example terraform.tfvars   # edit with real values

# 2. Initialise – downloads the IBM Cloud provider plugin
terraform init

# 3. Preview the execution plan
terraform plan

# 4. Apply
terraform apply

# 5. Destroy resources when done
terraform destroy
```

## Resources provisioned

- `ibm_is_vpc` – Virtual Private Cloud
- `ibm_is_subnet` – Subnet inside the VPC

## References

- [IBM Cloud Provider for Terraform docs](https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform)
- [Terraform Registry – IBM-Cloud/ibm](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs)
- [Provider examples on GitHub](https://github.com/IBM-Cloud/terraform-provider-ibm/tree/master/examples)
