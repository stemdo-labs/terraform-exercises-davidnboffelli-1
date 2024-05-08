terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.67.0"
    }
  }
}

provider "azurerm" {
  features {}
  #    alias = "prueba"
  #    subscription_id = var.subscription_id
  #    client_id = var.client_id
  #    client_secret = var.client_secret
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "West Europe"

}

resource "azurerm_resource_group" "rg2" {
  name     = "rg2"
  location = "West Europe"
  tags = {
    dependency = azurerm_resource_group.example.name
  }
}

resource "azurerm_resource_group" "rg3" {
  name     = "rg3"
  location = "West Europe"
  depends_on = [
    azurerm_resource_group.rg2
  ]
}