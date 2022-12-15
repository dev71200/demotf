variable "location" {
}

variable "resource_group" {
}

variable "vnet" {
  default = "nginxvent"
}

variable "vnet_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "subnet" {
  default = "public_subnet1"
}

variable "resource_tags" {
  type = map(string)
}