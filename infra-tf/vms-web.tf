resource "azurerm_network_interface" "web-01-nic" {
  name                = "web-01-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "primary"
    subnet_id                     = azurerm_subnet.app.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "web-01" {
  name                  = "vm-web-01"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.web-01-nic.id]
  size                  = "Standard_B1s"
  admin_username        = "admin-yuri"
  admin_password        = var.vmpasswd
  disable_password_authentication = false
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  os_disk {
    name                 = "mywebosdisk1"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"  
    }
  tags = {
    environment = "WEB"
    }
  }

  resource "azurerm_network_interface" "web-02-nic" {
  name                = "web-02-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "primary"
    subnet_id                     = azurerm_subnet.app.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "web-02" {
  name                  = "vm-web-02"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.web-02-nic.id]
  size                  = "Standard_B1s"
  admin_username        = "admin-yuri"
  admin_password        = var.vmpasswd
  disable_password_authentication = false
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  os_disk {
    name                 = "mywebosdisk2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"  
    }
  tags = {
    environment = "WEB"
    }
  }


  