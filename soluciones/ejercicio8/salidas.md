Configuré el almacenamiento de estado remoto para el módulo "ejerciciosanteriores" que es el módulo hecho en el ejercicio5 (vnet)
Subo una captura del archivo terraform.tfsate de la nube
En el terraform destroy ha aparecido un error al final referido a la actualizacion del estado
supongo que es normal, al querer modificar el nuevo estado no encuentra el recurso porque fue eliminado
# ##################################################################################################################
Salidas por consola:
# ##################################################################################################################
# ESTO LO EJECUTO SIN EL BACKEND EN EL PROVIDER, A MODO DE CREAR INICIALMENTE LOS RECURSOS
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8> terraform init

Initializing the backend...
Initializing modules...

Initializing provider plugins...
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Finding latest version of hashicorp/random...
- Using previously-installed hashicorp/azurerm v3.102.0
- Installing hashicorp/random v3.6.1...
- Installed hashicorp/random v3.6.1 (signed by HashiCorp)

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_storage_account.tfstate will be created
  + resource "azurerm_storage_account" "tfstate" {
      + access_tier                        = (known after apply)
      + account_kind                       = "StorageV2"
      + account_replication_type           = "LRS"
      + account_tier                       = "Standard"
      + allow_nested_items_to_be_public    = false
      + cross_tenant_replication_enabled   = true
      + default_to_oauth_authentication    = false
      + dns_endpoint_type                  = "Standard"
      + enable_https_traffic_only          = true
      + id                                 = (known after apply)
      + infrastructure_encryption_enabled  = false
      + is_hns_enabled                     = false
      + large_file_share_enabled           = (known after apply)
      + local_user_enabled                 = true
      + location                           = "westeurope"
      + min_tls_version                    = "TLS1_2"
      + name                               = (known after apply)
      + nfsv3_enabled                      = false
      + primary_access_key                 = (sensitive value)
      + primary_blob_connection_string     = (sensitive value)
      + primary_blob_endpoint              = (known after apply)
      + primary_blob_host                  = (known after apply)
      + primary_blob_internet_endpoint     = (known after apply)
      + primary_blob_internet_host         = (known after apply)
      + primary_blob_microsoft_endpoint    = (known after apply)
      + primary_blob_microsoft_host        = (known after apply)
      + primary_connection_string          = (sensitive value)
      + primary_dfs_endpoint               = (known after apply)
      + primary_dfs_host                   = (known after apply)
      + primary_dfs_internet_endpoint      = (known after apply)
      + primary_dfs_internet_host          = (known after apply)
      + primary_dfs_microsoft_endpoint     = (known after apply)
      + primary_dfs_microsoft_host         = (known after apply)
      + primary_file_endpoint              = (known after apply)
      + primary_file_host                  = (known after apply)
      + primary_file_internet_endpoint     = (known after apply)
      + primary_file_internet_host         = (known after apply)
      + primary_file_microsoft_endpoint    = (known after apply)
      + primary_file_microsoft_host        = (known after apply)
      + primary_location                   = (known after apply)
      + primary_queue_endpoint             = (known after apply)
      + primary_queue_host                 = (known after apply)
      + primary_queue_microsoft_endpoint   = (known after apply)
      + primary_queue_microsoft_host       = (known after apply)
      + primary_table_endpoint             = (known after apply)
      + primary_table_host                 = (known after apply)
      + primary_table_microsoft_endpoint   = (known after apply)
      + primary_table_microsoft_host       = (known after apply)
      + primary_web_endpoint               = (known after apply)
      + primary_web_host                   = (known after apply)
      + primary_web_internet_endpoint      = (known after apply)
      + primary_web_internet_host          = (known after apply)
      + primary_web_microsoft_endpoint     = (known after apply)
      + primary_web_microsoft_host         = (known after apply)
      + public_network_access_enabled      = true
      + queue_encryption_key_type          = "Service"
      + resource_group_name                = "rg1dnazareno-lab01"
      + secondary_access_key               = (sensitive value)
      + secondary_blob_connection_string   = (sensitive value)
      + secondary_blob_endpoint            = (known after apply)
      + secondary_blob_host                = (known after apply)
      + secondary_blob_internet_endpoint   = (known after apply)
      + secondary_blob_internet_host       = (known after apply)
      + secondary_blob_microsoft_endpoint  = (known after apply)
      + secondary_blob_microsoft_host      = (known after apply)
      + secondary_connection_string        = (sensitive value)
      + secondary_dfs_endpoint             = (known after apply)
      + secondary_dfs_host                 = (known after apply)
      + secondary_dfs_internet_endpoint    = (known after apply)
      + secondary_dfs_internet_host        = (known after apply)
      + secondary_dfs_microsoft_endpoint   = (known after apply)
      + secondary_dfs_microsoft_host       = (known after apply)
      + secondary_file_endpoint            = (known after apply)
      + secondary_file_host                = (known after apply)
      + secondary_file_internet_endpoint   = (known after apply)
      + secondary_file_internet_host       = (known after apply)
      + secondary_file_microsoft_endpoint  = (known after apply)
      + secondary_file_microsoft_host      = (known after apply)
      + secondary_location                 = (known after apply)
      + secondary_queue_endpoint           = (known after apply)
      + secondary_queue_host               = (known after apply)
      + secondary_queue_microsoft_endpoint = (known after apply)
      + secondary_queue_microsoft_host     = (known after apply)
      + secondary_table_endpoint           = (known after apply)
      + secondary_table_host               = (known after apply)
      + secondary_table_microsoft_endpoint = (known after apply)
      + secondary_table_microsoft_host     = (known after apply)
      + secondary_web_endpoint             = (known after apply)
      + secondary_web_host                 = (known after apply)
      + secondary_web_internet_endpoint    = (known after apply)
      + secondary_web_internet_host        = (known after apply)
      + secondary_web_microsoft_endpoint   = (known after apply)
      + secondary_web_microsoft_host       = (known after apply)
      + sftp_enabled                       = false
      + shared_access_key_enabled          = true
      + table_encryption_key_type          = "Service"
      + tags                               = {
          + "environment" = "staging"
        }
    }

  # azurerm_storage_container.tfstate will be created
  + resource "azurerm_storage_container" "tfstate" {
      + container_access_type             = "private"
      + default_encryption_scope          = (known after apply)
      + encryption_scope_override_enabled = true
      + has_immutability_policy           = (known after apply)
      + has_legal_hold                    = (known after apply)
      + id                                = (known after apply)
      + metadata                          = (known after apply)
      + name                              = "tfstate"
      + resource_manager_id               = (known after apply)
      + storage_account_name              = (known after apply)
    }

  # random_string.resource_code will be created
  + resource "random_string" "resource_code" {
      + id          = (known after apply)
      + length      = 5
      + lower       = true
      + min_lower   = 0
      + min_numeric = 0
      + min_special = 0
      + min_upper   = 0
      + number      = true
      + numeric     = true
      + result      = (known after apply)
      + special     = false
      + upper       = false
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

Plan: 4 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_string.resource_code: Creating...
random_string.resource_code: Creation complete after 0s [id=i10i7]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Creating...
azurerm_storage_account.tfstate: Creating...
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Creation complete after 5s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_storage_account.tfstate: Still creating... [10s elapsed]
azurerm_storage_account.tfstate: Still creating... [20s elapsed]
azurerm_storage_account.tfstate: Still creating... [30s elapsed]
azurerm_storage_account.tfstate: Creation complete after 32s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstatei10i7]
azurerm_storage_container.tfstate: Creating...
azurerm_storage_container.tfstate: Creation complete after 1s [id=https://tfstatei10i7.blob.core.windows.net/tfstate]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
# ##################################################################################################################
# ESTO LO EJECUTO LUEGO, AGREGANDO EL BLOQUE BACKEND EN EL PROVIDER
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8> terraform init 

Initializing the backend...
Do you want to copy existing state to the new backend?
  Pre-existing state was found while migrating the previous "local" backend to the
  newly configured "azurerm" backend. No existing state was found in the newly
  configured "azurerm" backend. Do you want to copy this state to the new "azurerm"
  backend? Enter "yes" to copy and "no" to start with an empty state.

  Enter a value: yes


Successfully configured the backend "azurerm"! Terraform will automatically
use this backend unless the backend configuration changes.
Initializing modules...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Using previously-installed hashicorp/random v3.6.1
- Using previously-installed hashicorp/azurerm v3.102.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8> terraform apply
random_string.resource_code: Refreshing state... [id=i10i7]
module.vnetejerciciosanteriores.azurerm_virtual_network.example: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_storage_account.tfstate: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstatei10i7]
azurerm_storage_container.tfstate: Refreshing state... [id=https://tfstatei10i7.blob.core.windows.net/tfstate]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.