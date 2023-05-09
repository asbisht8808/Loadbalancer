resource "azurerm_storage_account" "storageacc" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.RG2.name
  location                 = azurerm_resource_group.RG2.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}