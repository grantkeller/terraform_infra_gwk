## SQL Server ##
resource "azurerm_sql_server" "Server" {
  name                         = var.sql_database_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.sql_server_admin_login
  administrator_login_password = var.sql_server_admin_password
  tags                         = var.tags
}

## SQL Database ##
resource "azurerm_sql_database" "Database" {
  name                         = var.sql_database_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  server_name                  = var.sql_server_name
  tags                         = var.tags
}