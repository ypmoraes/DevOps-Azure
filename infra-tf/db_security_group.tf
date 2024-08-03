resource "azurerm_network_security_group" "db-nsg" {
  name                = "db-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_rule" "allow_sql" {
  name                 = "allow-sql"
  priority             = 100
  direction            = "Inbound"
  access               = "Allow"
  protocol            = "Tcp"
  source_port_range    = "*"
  destination_port_range = "3386"
  source_address_prefix = "10.0.2.0/24"
  destination_address_prefix = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.db-nsg.name
}
