## Main ##
variable "location" {
  type = string
  description = "Location for all resources"
}

variable "client_id" {
  type = string
  description = "Value for client_id"
}

variable "client_secret" {
  type = string
  description = "Value for client_secret"
}

variable "subscription_id" {
  type = string
  description = "Value for subscription_id"
}

variable "tenant_id" {
  type = string
  description = "Value for tenant_id"
}

## RG ##
variable "resource_group_name"{
    type = string
    description = "Name of resource group 1"
}

## VNET ## 
variable "virtual_network_name" {
    type = string
    description = "Name of Virtual Network"  
}

variable "address_space" {
    type = list(string)
    description = "Address space of VNET"
}

## SQL Server ##
variable "sql_server_name" {
  type = string
  description = "Name of Azure SQL Server"
}

variable "sql_server_version" {
  type = string
  description = "Version of Azure SQL Server"
}

variable "sql_server_admin_login" {
  type = string
  description = "Administrator login for SQL Server"
  default = "JSON"
}

variable "sql_server_admin_password" {
  type = string
  description = "Administrator password for SQL Server"
  default = "JSON"
}

## SQL Database ##
variable "sql_database_name" {
  type = string
  description = "Name of Azure SQL Database"
}

## Storage Account
variable "storage_account_name" {
  type = string
  description = "Name of ADLS storage account" 
}

variable "storage_account_tier" {
  type = string
  description = "Account tier for ADLS storage account"
}

variable "storage_account_replication_type" {
  type = string
  description = "Accont replication type for ADLS storage account"
}

## Data Factory ##
variable "data_factory_name"{
    type = string
    description = "Name of Data Factory"
}

variable "tags" {
  type        = map(string)
  default     = {
    Environment = "Production"
  }
}