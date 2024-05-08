variable "existent_resource_group_name"{
  type = string
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

variable "location"{
  type = string
  default = "West Europe"
}

variable "owner_tag"{
  type = string
  description = "Describe al propietario de la VNet"
  nullable = false
  validation {
    condition = (var.owner_tag != "")
    error_message = "El valor de la variable owner_tag no puede ser vacío."
  }
}

variable "environment_tag"{
  type = string
  description = "Describe el entorno de la VNet (dev, test, prod, etc)."
  nullable = false
  validation {
    condition = (var.environment_tag != "")
    error_message = "El valor de la variable environment_tag no puede ser vacío."
  }
  validation {
    condition = contains(["DEV","PRO","TES","PRE"],upper(var.environment_tag))
    error_message = "El valor solo puede ser uno de los siguientes: DEV, PRO, TES o PRE"
  }
}

variable "vnet_tags"{
  type = map(string)
  default = {}
  description = "Describe los tags adicionales que se aplicarán a la VNet."
  nullable = false
  validation {
    condition     = var.vnet_tags != null && length([for v in values(var.vnet_tags) : v if v == null || v == ""]) == 0
    error_message = "El valor de la variable vnet_tags no puede ser vacío."
  }
}