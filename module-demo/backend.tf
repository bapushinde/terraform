terraform {
  backend "gcs" {
    bucket      = "<bucket>"
    prefix      = "<key_prefix>"
    credentials = "~/practice/Terraform/<service_account>.json"
  }
}
