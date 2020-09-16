
variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

variable "vcn_display_name" {
  default = "testVCN"
}

variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  default = "vcn"
}

variable "subnet_dns_label" {
  default = "subnet"
}
