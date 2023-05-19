resource "azurerm_availability_set" "avabilityzone" {
  name                = "lb-aset"
  location            = azurerm_resource_group.RG2.location
  resource_group_name = azurerm_resource_group.RG2.name

  tags = {
    environment = "Production"
  }
  depends_on = [azurerm_resource_group.RG2]
}
