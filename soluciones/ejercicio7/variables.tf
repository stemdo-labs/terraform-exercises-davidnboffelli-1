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
  validation {
    condition = length(var.vnet_address_space) > 0
    error_message = "Debe indicar al menos un espacio de direccón."
  }
}

variable "location"{
  type = string
  default = "West Europe"
}

variable "sn_name"{
  type = string
  validation {
    condition = length(var.sn.name) > 4
    error_message = "El nombre debe tener más de 4 caracteres."
  }
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