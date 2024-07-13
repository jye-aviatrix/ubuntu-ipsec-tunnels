# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet_1" {
  name                = var.vnet_1_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = [var.vnet_1_cidr]
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet_2" {
  name                = var.vnet_2_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = [var.vnet_2_cidr]
}