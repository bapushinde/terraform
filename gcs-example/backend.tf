terraform {
  backend "gcs" {
    bucket      = "practice-terraform-dev"
    prefix      = "state-22092020"
    credentials = var.serviceaccount
  }
}
