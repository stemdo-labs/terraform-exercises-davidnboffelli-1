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

variable "existent_resource_group_name"{
  type = string
}

module "gruposeguridad" {
  source = "github.com/stemdo-labs/terraform-exercises-davidnboffelli-1/soluciones/ejercicio7/modules/gruposeguridad"
  #source = "./modules/gruposeguridad"
  existent_resource_group_name = var.existent_resource_group_name
  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

variable "vnet_name"{
  type = string
  nullable = false
  validation {
    condition = (var.vnet_name != "")
    error_message = "El valor de la variable vnet_name no puede ser vacío."
  }
  validation {
    condition = can(regex("(^vnet[a-z]{3,}tfexercise[0-9]{2,})",var.vnet_name))
    error_message = "El valor de la variable vnet_name no puede ser vacío."
  }
}

variable "vnet_address_space"{
  type = list(string)
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

variable "subnets" {
  type = map(object({
    key              = string
    address_prefixes = set(string)
  }))
  default = {
    subnet1 = {
      "key"              = "subnet_1"
      "address_prefixes" = ["10.0.1.0/24"]
    }
    subnet2 = {
      "key"              = "subnet_2"
      "address_prefixes" = ["10.0.2.0/24"]
    }
  }
}

module "subredes" {
  #Solo por diversidad, decido que busque este módulo en local
  source = "./modules/crearsubnets"
  for_each = var.subnets
  name                 = each.value.key
  resource_group_name  = var.existent_resource_group_name
  virtual_network_name = module.vnetejerciciosanteriores.name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
  subnet_id                 = module.subredes[0].id
  network_security_group_id = module.gruposeguridad.id
}