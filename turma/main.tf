# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
# Create a resource group
resource "azurerm_resource_group" "grupo_recursos" {
  name     = "example-${var.location}-resources"
  location = var.location
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "rede" {
  name                = "example-${var.location}-network"
  resource_group_name = azurerm_resource_group.grupo_recursos.name
  location            = azurerm_resource_group.grupo_recursos.location
  address_space       = ["10.0.0.0/16"]
}