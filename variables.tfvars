## Main ##
location = "EastUS2"

## RG ##
resource_group_name = "KellerRG1"

## VNET ##
virtual_network_name = "KellerVNET"
address_space        = ["10.0.0.0/24"]

## SQL Server ##
sql_server_name    = "kellersqlserver"
sql_server_version = "12.0"

## SQL Database ##
sql_database_name = "kellersqldb"

## Storage Account ##
storage_account_name             = "kellersa"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"

## Data Factory ##
data_factory_name = "KellerDataFactory"