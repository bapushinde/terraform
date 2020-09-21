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
