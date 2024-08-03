resource "azurerm_network_security_group" "app-nsg" {
  name                = "app-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
}


resource "azurerm_network_security_rule" "allow_app" {
  name                 = "allow-app"
  priority             = 100
  direction            = "Inbound"
  access               = "Allow"
  protocol            = "Tcp"
  source_port_range    = "*"
  destination_port_range = "3000"
  source_address_prefix = "*"
  destination_address_prefix = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.app-nsg.name
}