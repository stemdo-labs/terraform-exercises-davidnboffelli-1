terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg1dnazareno-lab01"
      storage_account_name = "tfstatei10i7"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "vnetejerciciosanteriores" {
  source = "github.com/stemdo-labs/terraform-exercises-davidnboffelli-1/soluciones/ejercicio7/modules/ejerciciosanteriores"
  #source = "./modules/ejerciciosanteriores"
  owner_tag = "David"
  vnet_address_space = var.vnet_address_space
  environment_tag = "PRO"
  vnet_name = var.vnet_name
  existent_resource_group_name = var.existent_resource_group_name
}

resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstate${random_string.resource_code.result}"
  resource_group_name      = var.existent_resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}