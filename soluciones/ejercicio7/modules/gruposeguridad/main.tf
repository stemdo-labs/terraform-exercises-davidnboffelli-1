resource "azurerm_network_security_group" "gs7" {
  name                = "grupo-seguridad-ejercicio7"
  location            = var.location
  resource_group_name = var.existent_resource_group_name
}