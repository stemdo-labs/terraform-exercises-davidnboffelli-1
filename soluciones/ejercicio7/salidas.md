PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio7> terraform init

Initializing the backend...
Initializing modules...

Initializing provider plugins...
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Using previously-installed hashicorp/azurerm v3.102.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio7> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # module.gruposeguridad.azurerm_network_security_group.gs7 will be created
  + resource "azurerm_network_security_group" "gs7" {
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "grupo-seguridad-ejercicio7"
      + resource_group_name = "rg1dnazareno-lab01"
      + security_rule       = (known after apply)
    }

  # module.subredes["subnet1"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.1.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_1"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.subredes["subnet2"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.2.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_2"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.subredes["subnet3"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.3.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_3"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.vnetejerciciosanteriores.azurerm_virtual_network.example will be created
  + resource "azurerm_virtual_network" "example" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "vnetdnazarenotfexercise01"
      + resource_group_name = "rg1dnazareno-lab01"
      + subnet              = (known after apply)
      + tags                = {
          + "environment" = "PRO"
          + "owner"       = "David"
        }
    }

Plan: 8 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio7> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"] will be created
  + resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # module.gruposeguridad.azurerm_network_security_group.gs7 will be created
  + resource "azurerm_network_security_group" "gs7" {
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "grupo-seguridad-ejercicio7"
      + resource_group_name = "rg1dnazareno-lab01"
      + security_rule       = (known after apply)
    }

  # module.subredes["subnet1"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.1.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_1"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.subredes["subnet2"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.2.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_2"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.subredes["subnet3"].azurerm_subnet.nuevasubred will be created
  + resource "azurerm_subnet" "nuevasubred" {
      + address_prefixes                               = [
          + "10.0.3.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = (known after apply)
      + enforce_private_link_service_network_policies  = (known after apply)
      + id                                             = (known after apply)
      + name                                           = "subnet_3"
      + private_endpoint_network_policies_enabled      = (known after apply)
      + private_link_service_network_policies_enabled  = (known after apply)
      + resource_group_name                            = "rg1dnazareno-lab01"
      + virtual_network_name                           = "vnetdnazarenotfexercise01"
    }

  # module.vnetejerciciosanteriores.azurerm_virtual_network.example will be created
  + resource "azurerm_virtual_network" "example" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "vnetdnazarenotfexercise01"
      + resource_group_name = "rg1dnazareno-lab01"
      + subnet              = (known after apply)
      + tags                = {
          + "environment" = "PRO"
          + "owner"       = "David"
        }
    }

Plan: 8 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.gruposeguridad.azurerm_network_security_group.gs7: Creating...
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Creating...
module.gruposeguridad.azurerm_network_security_group.gs7: Creation complete after 3s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Creation complete after 6s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Creating...
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Creating...
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Creating...
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Creation complete after 5s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Still creating... [10s elapsed]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Still creating... [10s elapsed]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Creation complete after 11s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Creation complete after 15s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Creating...
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Creating...
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Creating...
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Creation complete after 7s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Still creating... [10s elapsed]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Still creating... [10s elapsed]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Creation complete after 13s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Creation complete after 18s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]

Apply complete! Resources: 8 added, 0 changed, 0 destroyed.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio7> terraform destroy
module.gruposeguridad.azurerm_network_security_group.gs7: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"] will be destroyed
  - resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      - id                        = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1" -> null
      - network_security_group_id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7" -> null
      - subnet_id                 = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1" -> null
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"] will be destroyed
  - resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      - id                        = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2" -> null
      - network_security_group_id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7" -> null
      - subnet_id                 = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2" -> null
    }

  # azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"] will be destroyed
  - resource "azurerm_subnet_network_security_group_association" "asoc_grupo_subred" {
      - id                        = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3" -> null
      - network_security_group_id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7" -> null
      - subnet_id                 = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3" -> null
    }

  # module.gruposeguridad.azurerm_network_security_group.gs7 will be destroyed
  - resource "azurerm_network_security_group" "gs7" {
      - id                  = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7" -> null
      - location            = "westeurope" -> null
      - name                = "grupo-seguridad-ejercicio7" -> null
      - resource_group_name = "rg1dnazareno-lab01" -> null
      - security_rule       = [] -> null
      - tags                = {} -> null
    }

  # module.subredes["subnet1"].azurerm_subnet.nuevasubred will be destroyed
  - resource "azurerm_subnet" "nuevasubred" {
      - address_prefixes                               = [
          - "10.0.1.0/24",
        ] -> null
      - enforce_private_link_endpoint_network_policies = false -> null
      - enforce_private_link_service_network_policies  = false -> null
      - id                                             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1" -> null
      - name                                           = "subnet_1" -> null
      - private_endpoint_network_policies_enabled      = true -> null
      - private_link_service_network_policies_enabled  = true -> null
      - resource_group_name                            = "rg1dnazareno-lab01" -> null
      - service_endpoint_policy_ids                    = [] -> null
      - service_endpoints                              = [] -> null
      - virtual_network_name                           = "vnetdnazarenotfexercise01" -> null
    }

  # module.subredes["subnet2"].azurerm_subnet.nuevasubred will be destroyed
  - resource "azurerm_subnet" "nuevasubred" {
      - address_prefixes                               = [
          - "10.0.2.0/24",
        ] -> null
      - enforce_private_link_endpoint_network_policies = false -> null
      - enforce_private_link_service_network_policies  = false -> null
      - id                                             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2" -> null
      - name                                           = "subnet_2" -> null
      - private_endpoint_network_policies_enabled      = true -> null
      - private_link_service_network_policies_enabled  = true -> null
      - resource_group_name                            = "rg1dnazareno-lab01" -> null
      - service_endpoint_policy_ids                    = [] -> null
      - service_endpoints                              = [] -> null
      - virtual_network_name                           = "vnetdnazarenotfexercise01" -> null
    }

  # module.subredes["subnet3"].azurerm_subnet.nuevasubred will be destroyed
  - resource "azurerm_subnet" "nuevasubred" {
      - address_prefixes                               = [
          - "10.0.3.0/24",
        ] -> null
      - enforce_private_link_endpoint_network_policies = false -> null
      - enforce_private_link_service_network_policies  = false -> null
      - id                                             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3" -> null
      - name                                           = "subnet_3" -> null
      - private_endpoint_network_policies_enabled      = true -> null
      - private_link_service_network_policies_enabled  = true -> null
      - resource_group_name                            = "rg1dnazareno-lab01" -> null
      - service_endpoint_policy_ids                    = [] -> null
      - service_endpoints                              = [] -> null
      - virtual_network_name                           = "vnetdnazarenotfexercise01" -> null
    }

  # module.vnetejerciciosanteriores.azurerm_virtual_network.example will be destroyed
  - resource "azurerm_virtual_network" "example" {
      - address_space           = [
          - "10.0.0.0/16",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "6704945c-18e8-4c3a-84c2-9fa62b006019" -> null
      - id                      = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01" -> null
      - location                = "westeurope" -> null
      - name                    = "vnetdnazarenotfexercise01" -> null
      - resource_group_name     = "rg1dnazareno-lab01" -> null
      - subnet                  = [
          - {
              - address_prefix = "10.0.1.0/24"
              - id             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1"
              - name           = "subnet_1"
              - security_group = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7"
            },
          - {
              - address_prefix = "10.0.2.0/24"
              - id             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2"
              - name           = "subnet_2"
              - security_group = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7"
            },
          - {
              - address_prefix = "10.0.3.0/24"
              - id             = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3"
              - name           = "subnet_3"
              - security_group = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7"
            },
        ] -> null
      - tags                    = {
          - "environment" = "PRO"
          - "owner"       = "David"
        } -> null
    }

Plan: 0 to add, 0 to change, 8 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet1"]: Destruction complete after 5s
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet3"]: Destruction complete after 9s
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_2, 10s elapsed]
azurerm_subnet_network_security_group_association.asoc_grupo_subred["subnet2"]: Destruction complete after 13s
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_1]
module.gruposeguridad.azurerm_network_security_group.gs7: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/networkSecurityGroups/grupo-seguridad-ejercicio7]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_2]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01/subnets/subnet_3]
module.gruposeguridad.azurerm_network_security_group.gs7: Destruction complete after 2s
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_1, 10s elapsed]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_3, 10s elapsed]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_2, 10s elapsed]
module.subredes["subnet1"].azurerm_subnet.nuevasubred: Destruction complete after 11s
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_2, 20s elapsed]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_3, 20s elapsed]
module.subredes["subnet2"].azurerm_subnet.nuevasubred: Destruction complete after 22s
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...dnazarenotfexercise01/subnets/subnet_3, 30s elapsed]
module.subredes["subnet3"].azurerm_subnet.nuevasubred: Destruction complete after 33s
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...tualNetworks/vnetdnazarenotfexercise01, 10s elapsed]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Destruction complete after 11s

Destroy complete! Resources: 8 destroyed.