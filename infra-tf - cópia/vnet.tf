resource "azurerm_virtual_network" "main" {
  name                = "vnet_prd"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "web" {
  name                 = "web"
  address_prefixes     = ["10.0.1.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
}

resource "azurerm_subnet" "app" {
  name                 = "app"
  address_prefixes       = ["10.0.2.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
}

resource "azurerm_subnet" "db" {
  name                 = "db"
  address_prefixes       = ["10.0.3.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
}
