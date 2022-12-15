module "vm" {
  source         = "./vm"
  location       = var.location
  resource_group = var.resource_group
  publicip       = module.vnet.public_ip
  pub_subnet_id  = module.vnet.pub_subnet_id
}

module "nsg" {
  source         = "./nsg"
  location       = var.location
  resource_group = var.resource_group
}

module "vnet" {
  source         = "./vnet"
  location       = var.location
  resource_group = var.resource_group
  vnet_cidr      = var.vnet_cidr
  subnet_cidr    = var.subnet_cidr
  resource_tags  = var.resource_tags
}