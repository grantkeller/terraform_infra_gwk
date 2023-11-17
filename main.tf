terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id           = var.client_id
  client_secret       = var.client_secret
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
}

## RG ##
resource "azurerm_resource_group" "RG" {
  name                = var.resource_group_name
  location            = var.location
}

## VNET ##
resource "azurerm_virtual_network" "VNET" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}