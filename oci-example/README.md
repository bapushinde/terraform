## Terraform OCI Example:
### Steps to Provision resources on OCI (Oracle Cloud Infrastructure)
1. Download source code from repository in desired location
2. Enter into source code directory oci-example
3. Terraform OCI example using local backend for state file.
4. Edit main.tf and add `terraform.tfstate` to local directory.
5. #### - Setup following env variables
      - export *TF_VAR_tenancy_ocid*=""
      - export *TF_VAR_compartment_ocid*=""
      - export *TF_VAR_user_ocid*=""
      - export *TF_VAR_fingerprint*=""
      - export *TF_VAR_private_key_path*=""
6. execute `terraform init` command to setup current working directory & to initialize terraform configuration.
