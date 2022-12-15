variable "nsg_name" {
  default = "ngnix-nsg"
}

variable "location" {}

variable "resource_group" {}

variable "resource_tags" {
  type = map(string)
}
