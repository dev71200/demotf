variable "location" {}


variable "resource_group" {}

variable "vnet" {
  default = "nginxvent"
}

variable "vm_name" {
  default = "nginx-vm"
}

variable "publicip" {
  default = "nginxpublicip"
}
variable "pub_subnet_id" {
}

variable "nic" {
  default = "nginxnic"
}
variable "resource_tags" {
  type = map(string)
}