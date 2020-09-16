# terraform
Terraform GCS Examples:
Steps to Provision resource on GCP
1. Download source code from repository in desired location
2. Enter into source code directory
3. Terraform GCS example using remote-backend as GCS, to use local backend for state file. Disable "backend block in backend.tf file", Jump to step #7
4. Create `Service_Account` through GCP console with ``"Editor"`` permission
5. Download `Service_Account` json into local directory.
6. Edit backend.tf with `Service_Account` json file with absolute/relative path
7. Edit main.tf and add `Service_Account` json file path into `google` provider block 
8. execute `terraform init` command to setup current working directory to initialize terraform configuration.
