resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet
  address_space       = var.address_space
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = azurerm_resource_group.RG2.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.address_prefixes1
}


resource "azurerm_network_interface" "nic1" {
  name                = "Vm1_nic1"
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
   
    
  }
}

resource "azurerm_network_interface" "nic2" {
  name                = "Vm2_nic1"
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
  depends_on                    = [azurerm_public_ip.pip1]

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip1.id
    
  }
}

resource "azurerm_public_ip" "pip1" {
  name                = "Vm1_pip1"
  resource_group_name = azurerm_resource_group.RG2.name
  location            = azurerm_resource_group.RG2.location
  allocation_method   = "Static"


}

resource "azurerm_network_interface" "nic3" {
  name                = "Vm1_nic3"
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
   
    
  }
}

