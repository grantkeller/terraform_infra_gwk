## Main ##
variable "location" {
  type        = string
  description = "Location for all resources"
}

## RG ##
variable "resource_group_name" {
  type        = string
  description = "Name of resource group 1"
}

## VNET ## 
variable "virtual_network_name" {
  type        = string
  description = "Name of Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space of VNET"
}

## SQL Server ##
variable "sql_server_name" {
  type        = string
  description = "Name of Azure SQL Server"
}

variable "sql_server_version" {
  type        = string
  description = "Version of Azure SQL Server"
}

## SQL Database ##
variable "sql_database_name" {
  type        = string
  description = "Name of Azure SQL Database"
}

## Storage Account ##
variable "storage_account_name" {
  type        = string
  description = "Name of ADLS storage account"
}

variable "storage_account_tier" {
  type        = string
  description = "Account tier for ADLS storage account"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Accont replication type for ADLS storage account"
}

## Data Factory ##
variable "data_factory_name" {
  type        = string
  description = "Name of Data Factory"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Production"
  }
}