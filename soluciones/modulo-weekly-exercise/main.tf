resource "azurerm_virtual_network" "azvn" {
  name                = var.network_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.existent_resource_group_name
}

resource "azurerm_subnet" "azsbn" {
  name                 = var.weekly_subred
  resource_group_name  = var.existent_resource_group_name
  virtual_network_name = azurerm_virtual_network.azvn.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_network_security_group" "aznsc" {
  name                = var.weekly_secgroup
  location            = var.location
  resource_group_name = var.existent_resource_group_name

  security_rule {
    name                       = var.nsc_secrule_name
    priority                   = var.nsc_secrule_priority
    direction                  = var.nsc_secrule_direction
    access                     = var.nsc_secrule_access
    protocol                   = var.nsc_secrule_protocol
    source_port_range          = var.nsc_secrule_source_port_range
    destination_port_range     = var.nsc_secrule_destination_port_range
    source_address_prefix      = var.nsc_secrule_source_address_prefix
    destination_address_prefix = var.nsc_secrule_destination_address_prefix
  }
}

resource "azurerm_subnet_network_security_group_association" "my_nsg_association" {
  subnet_id                 = azurerm_subnet.azsbn.id
  network_security_group_id = azurerm_network_security_group.aznsc.id
}

resource "azurerm_network_interface" "aznic" {
  for_each = var.maquinasvirtuales
  name                = each.value.interface_name
  location            = var.location
  resource_group_name = var.existent_resource_group_name
  ip_configuration {
    name                          = "${var.nic_ip_name}${each.key}"
    subnet_id                     = azurerm_subnet.azsbn.id
    private_ip_address_allocation = var.nic_ip_private_ip_address_allocation
  }
}

resource "azurerm_network_interface_backend_address_pool_association" "my_nic_lb_pool" {
  for_each = var.maquinasvirtuales
  network_interface_id    = azurerm_network_interface.aznic[each.key].id
  ip_configuration_name   = "${var.nic_ip_name}${each.key}"
  backend_address_pool_id = azurerm_lb_backend_address_pool.azlbpool.id
}

resource "azurerm_linux_virtual_machine" "azlvm" {
  depends_on = [ azurerm_network_interface.aznic ]
  for_each = var.maquinasvirtuales
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.admin_username
  network_interface_ids = [
    azurerm_network_interface.aznic[each.key].id,
  ]
  source_image_reference {
    publisher = var.vm_image_publisher
    offer     = var.vm_image_offer
    sku       = var.vm_image_sku
    version   = var.vm_image_version
  }
  os_disk {
    caching              = var.vm_disk_caching
    storage_account_type = var.vm_disk_storage_account_type
  }
  #admin_ssh_key {
  #  username   = each.value.admin_username
  #  public_key = file(var.vm_ssh_public_key)
  #}
  admin_password = var.secret_password
}

resource "azurerm_lb" "azlb" {
  name = var.weekly_lb
  location = var.location
  resource_group_name = var.existent_resource_group_name
  sku = var.lb_sku

  frontend_ip_configuration {
    name = var.lb_front_ip_name
    subnet_id = azurerm_subnet.azsbn.id
    private_ip_address_allocation = var.lb_front_ip_private_ip_address_allocation
  }
}

resource "azurerm_lb_backend_address_pool" "azlbpool" {
  loadbalancer_id      = azurerm_lb.azlb.id
  name                 = var.lb_backend_address_pool_name
}