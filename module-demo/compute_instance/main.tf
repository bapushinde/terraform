resource "google_compute_instance" "vm_instance" {
  count        = var.instances
  name         = "module-compute-terraform-instance-${count.index}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = var.compute_vpc
    access_config {
    }
  }
}
