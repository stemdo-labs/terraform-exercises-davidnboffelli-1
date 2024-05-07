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

module "gruposeguridad" {
  source = "github.com/stemdo-labs/terraform-exercises-davidnboffelli-1/soluciones/ejercicio7/modules/gruposeguridad"
  #source = "./modules/gruposeguridad"
  existent_resource_group_name = var.existent_resource_group_name
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

module "subredes" {
  #Solo por diversidad, decido que busque este módulo en local
  source = "./modules/crearsubnets"
  count = 3
  name                 = "${var.sn_name}${count.index}"
  resource_group_name  = var.existent_resource_group_name
  virtual_network_name = module.vnetejerciciosanteriores.name
  address_prefixes     = ["10.0.${count.index + 1}.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
  for_each   = {
    for index, sr in module.subredes:
    sr.id => sr
  }
  subnet_id                 = each.value["id"]
  network_security_group_id = module.gruposeguridad.id
}