terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "ejerciciosanteriores" {
  source = "./modules/ejerciciosanteriores"
  owner_tag = "David"
  vnet_address_space = var.vnet_address_space
  environment_tag = "PRO"
  vnet_name = var.vnet_name
  existent_resource_group_name = var.existent_resource_group_name
}