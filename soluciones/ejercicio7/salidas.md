# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio6> terraform init

Initializing the backend...
Initializing modules...
Downloading git::https://github.com/stemdo-labs/terraform-exercises-davidnboffelli-1.git for ejerciciosanteriores...
- ejerciciosanteriores in .terraform\modules\ejerciciosanteriores\soluciones\ejercicio5\modules\ejerciciosanteriores

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
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio6> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.ejerciciosanteriores.azurerm_virtual_network.example will be created
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

Plan: 1 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio6> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.ejerciciosanteriores.azurerm_virtual_network.example will be created
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

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.ejerciciosanteriores.azurerm_virtual_network.example: Creating...
module.ejerciciosanteriores.azurerm_virtual_network.example: Creation complete after 5s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio6> terraform destroy
module.ejerciciosanteriores.azurerm_virtual_network.example: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.ejerciciosanteriores.azurerm_virtual_network.example will be destroyed
  - resource "azurerm_virtual_network" "example" {
      - address_space           = [
          - "10.0.0.0/16",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "40c9527e-b820-4908-b4c7-b1a66143a9fa" -> null
      - id                      = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01" -> null
      - location                = "westeurope" -> null
      - name                    = "vnetdnazarenotfexercise01" -> null
      - resource_group_name     = "rg1dnazareno-lab01" -> null
      - subnet                  = [] -> null
      - tags                    = {
          - "environment" = "PRO"
          - "owner"       = "David"
        } -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.ejerciciosanteriores.azurerm_virtual_network.example: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
module.ejerciciosanteriores.azurerm_virtual_network.example: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...tualNetworks/vnetdnazarenotfexercise01, 10s elapsed]
module.ejerciciosanteriores.azurerm_virtual_network.example: Destruction complete after 11s

Destroy complete! Resources: 1 destroyed.