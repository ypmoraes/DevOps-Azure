resource "azurerm_public_ip" "web-lbip" {
  name                = "Web-LBIP"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "web-lb" {
  name                = "web-lb"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.web-lbip.id
  }
}

resource "azurerm_lb_backend_address_pool" "web-backend" {
  loadbalancer_id = azurerm_lb.web-lb.id
  name            = "BackEndAddressPool"
}
