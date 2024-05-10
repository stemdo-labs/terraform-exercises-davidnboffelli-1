En este módulo se crean los siguientes recursos:
- una virtual network
- una subnet
- un grupo de seguridad
- la asociación entre el grupo de seguridad y la subnet
- un número variable de interfaces de red
- un balanceador de cargas
- un pool de direcciones backend del balanceador de cargas
- un número variable de asociaciones entre el modulo anterior y las interfaces de red (ADBIR)
- un número variable de máquinas virtuales

La cantidad de interfaces de red, ADBIRs y máquinas virtuales es la misma. Está vinculada a la cantidad de máquinas virtuales definidas en el mapa de objetos correspondientes a la variable maquinasvirtuales.

Son variables generales:
- location
- existent_resource_group_name
- maquinasvirtuales
- 

Son variables de la red virtual:
- network_name
- vnet_address_space

Son variables de la subnet:
- weekly_subred
- subnet_address_prefixes

Son variables del grupo de seguridad:
- weekly_secgroup
- nsc_secrule_name
- nsc_secrule_priority
- nsc_secrule_direction
- nsc_secrule_access
- nsc_secrule_protocol
- nsc_secrule_source_port_range
- nsc_secrule_destination_port_range
- nsc_secrule_source_address_prefix
- nsc_secrule_destination_address_prefix

Son variables de las interfaces de red:
- nic_ip_name
- nic_ip_private_ip_address_allocation

Son variables de las máquinas virtuales:
- vm_image_publish
- vm_image_offer
- vm_image_sku
- vm_image_version
- vm_disk_caching
- vm_disk_storage_account_type
- secret_password

Son variables del balanceador de cargas:
- weekly_lb
- existent_resource_group_name
- lb_sku
- lb_front_ip_name
- lb_front_ip_private_ip_address_allocation

Es variable del pool de direcciones backend:
- lb_backend_address_pool_name

Todas las variables poseen valores por default, excepto el grupo de recursos y la locación.
Se propone al implementador del módulo que defina valores para:
- la locación (variable "location")
- el grupo de recursos (variable "existent_resource_group_name")
- las maquinas virtuales (variable "maquinasvirtuales")

Se han presentado los siguientes outputs:
- virtualnet_id
- subnet_id
- securitygroup_id
- assoc_secgroup_subnet_id
- net_interface_id
- assoc_lb_bap_net_interface_id
- lv_machine_id 
- lb_id 
- lb_bap_id