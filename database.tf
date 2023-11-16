## Azure SQL Server ##
resource "azurerm_sql_server" "Server" {
  name                         = "KellerSQLServer"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags                         = var.tags
}

## Azure SQL Database ##
resource "azurerm_sql_database" "Database" {
  name                         = "KellerSQLDatabase"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  server_name                  = "Name"
  tags                         = var.tags
}