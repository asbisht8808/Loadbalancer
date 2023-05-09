#Resource Group for Virtual Machines.

resource "azurerm_resource_group" "RG2" {

  name     = var.rg_name
  location = var.location

}