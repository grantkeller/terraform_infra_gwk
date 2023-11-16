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