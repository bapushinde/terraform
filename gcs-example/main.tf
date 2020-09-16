terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "google" {
  version     = "3.5.0"
  credentials = file("~/<DIR_PATH>/<Service_Account_File_Name>.json")
  project     = "<Project_ID>"
  region      = "us-east1"
  zone        = "us-east1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_network" "vpc_network-2" {
  name = var.provisioner
}
