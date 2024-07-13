output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "location" {
  value = azurerm_resource_group.this.location
}

output "subnet_id" {
  value = azurerm_subnet.subnet_1.id
}