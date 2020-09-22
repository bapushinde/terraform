terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "google" {
  version     = "3.5.0"
  credentials = var.serviceaccount
  project     = "molten-raceway-282113"
  region      = "us-east1"
  zone        = "us-east1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_network" "vpc_network-2" {
  name = var.provisioner
}

module "computevm" {
  source  = "app.terraform.io/terraform-cloud-demo-22092020/computevm/google"
  version = "1.0.1"
  instances = 2
  compute_vpc = "terraform-network"
}
