# terraform
Terraform OCI Examples:
Steps to Provision resource on OCI (oracle cloud infrastructure)
1. Download source code from repository in desired location
2. Enter into source code directory oci-example
3. Terraform OCI example using local backend for state file.
7. Edit main.tf and add `terraform.tfstate` to local directory.
8. Setup following env variables
*export TF_VAR_tenancy_ocid=*
*export TF_VAR_compartment_ocid=*
*export TF_VAR_user_ocid=*
*export TF_VAR_fingerprint=*
*export TF_VAR_private_key_path=*
9. execute `terraform init` command to setup current working directory & to initialize terraform configuration.
