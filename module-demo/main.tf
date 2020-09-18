provider "google" {
  version     = "3.5.0"
  credentials = file("~/practice/Terraform/<Service_Account>.json")
  project     = "<Project_Id>"
  region      = "us-east1"
  zone        = "us-east1-b"
}

resource "google_compute_network" "vpc_network" {
  name = var.provisioner
}

module "democompute" {
  source      = "./compute_instance"
  compute_vpc = google_compute_network.vpc_network.name
  instances   = 2
}
