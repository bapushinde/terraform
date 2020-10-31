resource "google_compute_instance" "vm_instance" {
  count        = 1
  name         = "terraform-instance-${count.index}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "terraform-network"
    access_config {
    }
  }
}

# Imported vm iam_instance_profile
# resource "google_compute_instance" "imported_vm_instance" {
#   machine_type = "f1-micro"
#   name         = "manual-instance-1"
#
#   boot_disk {
#     initialize_params {
#       image = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-6-v20200910"
#     }
#   }
#
#   network_interface {
#     network = "https://www.googleapis.com/compute/v1/projects/molten-raceway-282113/global/networks/default"
#     access_config {
#     }
#   }
# }
