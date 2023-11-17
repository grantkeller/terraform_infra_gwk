## Locals ##
locals {
  sql_server_admin_login    = local.credentials.sql_server_admin_login
  sql_server_admin_password = local.credentials.sql_server_admin_password
}

## SQL Server ##
resource "azurerm_sql_server" "server" {
  depends_on                   = [azurerm_resource_group.RG]
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = local.sql_server_admin_login
  administrator_login_password = local.sql_server_admin_password
  tags                         = var.tags
}

## SQL Database ##
resource "azurerm_sql_database" "database" {
  depends_on          = [azurerm_resource_group.RG, azurerm_sql_server.server]
  name                = var.sql_database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.sql_server_name
  tags                = var.tags
}