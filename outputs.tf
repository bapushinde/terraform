output "vm_instance_public_ips" {
  value = google_compute_instance.vm_instance[*].network_interface[0].access_config[0].nat_ip
}

output "vpc_network_ipv4range" {
  value = google_compute_network.vpc_network.gateway_ipv4
}
