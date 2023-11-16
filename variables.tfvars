## Main ##
location                = "EastUS2"
client_id               = jsondecode(file("${path.module}/spn_credentials.json"))["client_id"]
client_secret           = jsondecode(file("${path.module}/spn_credentials.json"))["client_secret"]
subscription_id         = jsondecode(file("${path.module}/spn_credentials.json"))["subscription_id"]
tenant_id               = jsondecode(file("${path.module}/spn_credentials.json"))["tenant_id"]

## RG
resource_group_name     = "KellerRG1"

#VNET
virtual_network_name    = "KellerVNET"
address_space           = [""]

## Data Factory ##
data_factory_name       = "KellerDataFactory"