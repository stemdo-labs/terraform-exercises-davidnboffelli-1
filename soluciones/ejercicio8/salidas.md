Subo una captura del archivo terraform.tfsate de la nube
En el terraform destroy ha aparecido un error al final referido a la actualizacion del estado
supongo que es normal, al querer modificar el nuevo estado no encuentra el recurso porque fue eliminado
# ##################################################################################################################
Salidas por consola:
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8\modules\ejerciciosanteriores> terraform init

Initializing the backend...
Do you want to copy existing state to the new backend?
  Pre-existing state was found while migrating the previous "local" backend to the
  newly configured "azurerm" backend. No existing state was found in the newly
  configured "azurerm" backend. Do you want to copy this state to the new "azurerm"
  backend? Enter "yes" to copy and "no" to start with an empty state.

  Enter a value: yes


Successfully configured the backend "azurerm"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed hashicorp/azurerm v3.102.0
- Using previously-installed hashicorp/random v3.6.1

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8\modules\ejerciciosanteriores> terraform apply
var.environment_tag
  Describe el entorno de la VNet (dev, test, prod, etc).

  Enter a value: PRO

var.owner_tag
  Describe al propietario de la VNet

  Enter a value: dnazareno

random_string.resource_code: Refreshing state... [id=gdjft]
azurerm_virtual_network.example: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_storage_account.tfstate: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstategdjft]
azurerm_storage_container.tfstate: Refreshing state... [id=https://tfstategdjft.blob.core.windows.net/tfstate]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # azurerm_virtual_network.example will be updated in-place
  ~ resource "azurerm_virtual_network" "example" {
        id                      = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01"
        name                    = "vnetdnazarenotfexercise01"
      ~ tags                    = {
          ~ "environment" = "DEV" -> "PRO"
          ~ "owner"       = "David" -> "dnazareno"
        }
        # (7 unchanged attributes hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_virtual_network.example: Modifying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_virtual_network.example: Modifications complete after 1s [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

name = "vnetdnazarenotfexercise01"
# ##################################################################################################################
PS C:\Users\dnazareno\Workspace\gitrepo\terraform-exercises-davidnboffelli-1\soluciones\ejercicio8\modules\ejerciciosanteriores> terraform destroy
var.environment_tag
  Describe el entorno de la VNet (dev, test, prod, etc).

  Enter a value: DEV

var.owner_tag
  Describe al propietario de la VNet

  Enter a value: David

random_string.resource_code: Refreshing state... [id=gdjft]
azurerm_virtual_network.example: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_storage_account.tfstate: Refreshing state... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstategdjft]
azurerm_storage_container.tfstate: Refreshing state... [id=https://tfstategdjft.blob.core.windows.net/tfstate]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_storage_account.tfstate will be destroyed
  - resource "azurerm_storage_account" "tfstate" {
      - access_tier                       = "Hot" -> null
      - account_kind                      = "StorageV2" -> null
      - account_replication_type          = "LRS" -> null
      - account_tier                      = "Standard" -> null
      - allow_nested_items_to_be_public   = false -> null
      - cross_tenant_replication_enabled  = true -> null
      - default_to_oauth_authentication   = false -> null
      - dns_endpoint_type                 = "Standard" -> null
      - enable_https_traffic_only         = true -> null
      - id                                = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstategdjft" -> null
      - infrastructure_encryption_enabled = false -> null
      - is_hns_enabled                    = false -> null
      - local_user_enabled                = true -> null
      - location                          = "westeurope" -> null
      - min_tls_version                   = "TLS1_2" -> null
      - name                              = "tfstategdjft" -> null
      - nfsv3_enabled                     = false -> null
      - primary_access_key                = (sensitive value) -> null
      - primary_blob_connection_string    = (sensitive value) -> null
      - primary_blob_endpoint             = "https://tfstategdjft.blob.core.windows.net/" -> null
      - primary_blob_host                 = "tfstategdjft.blob.core.windows.net" -> null
      - primary_connection_string         = (sensitive value) -> null
      - primary_dfs_endpoint              = "https://tfstategdjft.dfs.core.windows.net/" -> null
      - primary_dfs_host                  = "tfstategdjft.dfs.core.windows.net" -> null
      - primary_file_endpoint             = "https://tfstategdjft.file.core.windows.net/" -> null
      - primary_file_host                 = "tfstategdjft.file.core.windows.net" -> null
      - primary_location                  = "westeurope" -> null
      - primary_queue_endpoint            = "https://tfstategdjft.queue.core.windows.net/" -> null
      - primary_queue_host                = "tfstategdjft.queue.core.windows.net" -> null
      - primary_table_endpoint            = "https://tfstategdjft.table.core.windows.net/" -> null
      - primary_table_host                = "tfstategdjft.table.core.windows.net" -> null
      - primary_web_endpoint              = "https://tfstategdjft.z6.web.core.windows.net/" -> null
      - primary_web_host                  = "tfstategdjft.z6.web.core.windows.net" -> null
      - public_network_access_enabled     = true -> null
      - queue_encryption_key_type         = "Service" -> null
      - resource_group_name               = "rg1dnazareno-lab01" -> null
      - secondary_access_key              = (sensitive value) -> null
      - secondary_connection_string       = (sensitive value) -> null
      - sftp_enabled                      = false -> null
      - shared_access_key_enabled         = true -> null
      - table_encryption_key_type         = "Service" -> null
      - tags                              = {
          - "environment" = "staging"
        } -> null

      - blob_properties {
          - change_feed_enabled           = false -> null
          - change_feed_retention_in_days = 0 -> null
          - last_access_time_enabled      = false -> null
          - versioning_enabled            = false -> null
        }

      - network_rules {
          - bypass                     = [
              - "AzureServices",
            ] -> null
          - default_action             = "Allow" -> null
          - ip_rules                   = [] -> null
          - virtual_network_subnet_ids = [] -> null
        }

      - queue_properties {
          - hour_metrics {
              - enabled               = true -> null
              - include_apis          = true -> null
              - retention_policy_days = 7 -> null
              - version               = "1.0" -> null
            }
          - logging {
              - delete                = false -> null
              - read                  = false -> null
              - retention_policy_days = 0 -> null
              - version               = "1.0" -> null
              - write                 = false -> null
            }
          - minute_metrics {
              - enabled               = false -> null
              - include_apis          = false -> null
              - retention_policy_days = 0 -> null
              - version               = "1.0" -> null
            }
        }

      - share_properties {
          - retention_policy {
              - days = 7 -> null
            }
        }
    }

  # azurerm_storage_container.tfstate will be destroyed
  - resource "azurerm_storage_container" "tfstate" {
      - container_access_type             = "private" -> null
      - default_encryption_scope          = "$account-encryption-key" -> null
      - encryption_scope_override_enabled = true -> null
      - has_immutability_policy           = false -> null
      - has_legal_hold                    = false -> null
      - id                                = "https://tfstategdjft.blob.core.windows.net/tfstate" -> null
      - metadata                          = {} -> null
      - name                              = "tfstate" -> null
      - resource_manager_id               = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstategdjft/blobServices/default/containers/tfstate" -> null
      - storage_account_name              = "tfstategdjft" -> null
    }

  # azurerm_virtual_network.example will be destroyed
  - resource "azurerm_virtual_network" "example" {
      - address_space           = [
          - "10.0.0.0/16",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "a1da7711-c146-413f-8435-4c15c359334c" -> null
      - id                      = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01" -> null
      - location                = "westeurope" -> null
      - name                    = "vnetdnazarenotfexercise01" -> null
      - resource_group_name     = "rg1dnazareno-lab01" -> null
      - subnet                  = [] -> null
      - tags                    = {
          - "environment" = "PRO"
          - "owner"       = "dnazareno"
        } -> null
    }

  # random_string.resource_code will be destroyed
  - resource "random_string" "resource_code" {
      - id          = "gdjft" -> null
      - length      = 5 -> null
      - lower       = true -> null
      - min_lower   = 0 -> null
      - min_numeric = 0 -> null
      - min_special = 0 -> null
      - min_upper   = 0 -> null
      - number      = true -> null
      - numeric     = true -> null
      - result      = "gdjft" -> null
      - special     = false -> null
      - upper       = false -> null
    }

Plan: 0 to add, 0 to change, 4 to destroy.

Changes to Outputs:
  - name = "vnetdnazarenotfexercise01" -> null

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

azurerm_storage_container.tfstate: Destroying... [id=https://tfstategdjft.blob.core.windows.net/tfstate]
azurerm_virtual_network.example: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Network/virtualNetworks/vnetdnazarenotfexercise01]
azurerm_storage_container.tfstate: Destruction complete after 2s
azurerm_storage_account.tfstate: Destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg1dnazareno-lab01/providers/Microsoft.Storage/storageAccounts/tfstategdjft]
azurerm_storage_account.tfstate: Destruction complete after 4s
random_string.resource_code: Destroying... [id=gdjft]
random_string.resource_code: Destruction complete after 0s
azurerm_virtual_network.example: Still destroying... [id=/subscriptions/86f76907-b9d5-46fa-a39d-...tualNetworks/vnetdnazarenotfexercise01, 10s elapsed]
azurerm_virtual_network.example: Destruction complete after 11s
╷
│ Error: Failed to save state
│
│ Error saving state: blobs.Client#PutBlockBlob: Failure responding to request: StatusCode=404 -- Original Error: autorest/azure: Service returned an error.   
│ Status=404 Code="ResourceNotFound" Message="The specified resource does not
│ exist.\nRequestId:a5d45c56-b01e-003d-5836-a14712000000\nTime:2024-05-08T10:54:12.8362808Z"
╵
╷
│ Error: Failed to persist state to backend
│
│ The error shown above has prevented Terraform from writing the updated state to the configured backend. To allow for recovery, the state has been written to 
│ the file "errored.tfstate" in the current working directory.
│
│ Running "terraform apply" again at this point will create a forked state, making it harder to recover.
│
│ To retry writing this state, use the following command:
│     terraform state push errored.tfstate
│
╵
Releasing state lock. This may take a few moments...
╷
│ Error: Error releasing the state lock
│
│ Error message: failed to retrieve lock info: blobs.Client#GetProperties: Failure responding to request: StatusCode=404 -- Original Error: autorest/azure:    
│ error response cannot be parsed: {"" '\x00' '\x00'} error: EOF
│
│ Terraform acquires a lock when accessing your state to prevent others
│ running Terraform to potentially modify the state at the same time. An
│ error occurred while releasing this lock. This could mean that the lock
│ did or did not release properly. If the lock didn't release properly,
│ Terraform may not be able to run future commands since it'll appear as if
│ the lock is held.
│
│ In this scenario, please call the "force-unlock" command to unlock the
│ state manually. This is a very dangerous operation since if it is done
│ erroneously it could result in two people modifying state at the same time.
│ Only call this command if you're certain that the unlock above failed and
│ that no one else is holding a lock.
╵