terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
}

## local ##
locals {
  credentials               = jsondecode(file("../credentials.json"))
  client_id                 = local.credentials.client_id
  client_secret             = local.credentials.client_secret
  subscription_id           = local.credentials.subscription_id
  tenant_id                 = local.credentials.tenant_id
}

provider "azurerm" {
  features {}
  client_id       = local.client_id
  client_secret   = local.client_secret
  subscription_id = local.subscription_id
  tenant_id       = local.tenant_id
}

## RG ##
resource "azurerm_resource_group" "RG" {
  name     = var.resource_group_name
  location = var.location
}

## VNET ##
resource "azurerm_virtual_network" "VNET" {
  depends_on          = [azurerm_resource_group.RG]
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}