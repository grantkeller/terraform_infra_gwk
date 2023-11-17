## Main ##
location                            = "EastUS2"
client_id                           = jsondecode(file("${path.module}/spn_credentials.json"))["client_id"]
client_secret                       = jsondecode(file("${path.module}/spn_credentials.json"))["client_secret"]
subscription_id                     = jsondecode(file("${path.module}/spn_credentials.json"))["subscription_id"]
tenant_id                           = jsondecode(file("${path.module}/spn_credentials.json"))["tenant_id"]

## RG ##
resource_group_name                 = "KellerRG1"

## VNET ##
virtual_network_name                = "KellerVNET"
address_space                       = ["10.0.0.0/24"]

## SQL Server ##
sql_server_name                     = "KellerSQLserver"
sql_server_version                  = "12.0"
sql_server_admin_login              = jsondecode(file("${path.module}/spn_credentials.json"))["sql_server_admin_login"]
sql_server_admin_password           = jsondecode(file("${path.module}/spn_credentials.json"))["sql_server_admin_password"]

## SQL Database ##
sql_database_name                   = "KellerSQLdb"

## Storage Account ##
storage_account_name                = "KellerSA"
storage_account_tier                = "Standard"
storage_account_replication_type    = "LRS"

## Data Factory ##
data_factory_name                   = "KellerDataFactory"