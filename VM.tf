
resource "azurerm_linux_virtual_machine" "linuxvm01" {
  name                            = var.vm_name1
  resource_group_name             = azurerm_resource_group.RG2.name
  location                        = azurerm_resource_group.RG2.location
  size                            = var.vm_size
  admin_username                  = "devopsadmin"
  admin_password                  = "P@ssw01rd@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.linux_vm_os_disk_size
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }

}

resource "azurerm_windows_virtual_machine" "windowsvm01" {
  name                = var.vm_name2
  resource_group_name = azurerm_resource_group.RG2.name
  location            = azurerm_resource_group.RG2.location
  size                = var.vm_size
  admin_username      = "devopsadmin"
  admin_password      = "P@ssw01rd@123"
  network_interface_ids = [
    azurerm_network_interface.nic2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.windows_vm_os_disk_size
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "linuxvm02" {
  name                            = var.vm_name1
  resource_group_name             = azurerm_resource_group.RG2.name
  location                        = azurerm_resource_group.RG2.location
  size                            = var.vm_size
  admin_username                  = "devopsadmin"
  admin_password                  = "P@ssw01rd@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic3.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.linux_vm_os_disk_size
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }

}


