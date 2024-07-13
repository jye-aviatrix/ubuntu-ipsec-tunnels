# Create a resource group
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}


# Create a virtual network within the resource group
resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = [var.vnet_cidr]
}


# subnet
resource "azurerm_subnet" "subnet_1" {
  name                 = "public-subnet-1"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.subnet_1_cidr]
}


# Route table
resource "azurerm_route_table" "subnet_1_rt" {
  name                = "${var.vnet_name}-public-subnet-1-rt"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  route {
    name                   = "default"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "Internet"
  }
}

resource "azurerm_subnet_route_table_association" "subnet_1_rt" {
  subnet_id      = azurerm_subnet.subnet_1.id
  route_table_id = azurerm_route_table.subnet_1_rt.id
}