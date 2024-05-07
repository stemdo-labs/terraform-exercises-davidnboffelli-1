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

variable "sn_name"{
  type = string
}