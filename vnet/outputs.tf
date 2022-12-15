output "public_ip" {
  value = azurerm_public_ip.publicip.ip_address
}

output "pub_subnet_id" {
  value = azurerm_subnet.subnet.id
}
