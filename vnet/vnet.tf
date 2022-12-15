resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.resource_group
  tags                = var.resource_tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_cidr]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}

resource "azurerm_public_ip" "publicip" {
  name                = var.publicip
  location            = var.location
  resource_group_name = var.resource_group
  allocation_method   = "Static"

  tags = var.resource_tags
}

