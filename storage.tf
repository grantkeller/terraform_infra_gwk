## Storage Account ##
resource "azurerm_storage_account" "StorrageAccount" {
  depends_on               = [azurerm_resource_group.RG]
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}