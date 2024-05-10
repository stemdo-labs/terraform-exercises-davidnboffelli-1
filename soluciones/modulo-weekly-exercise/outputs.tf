output "virtualnet_id" {
  value = azurerm_virtual_network.azvn.id
}

output "subnet_id" {
  value = azurerm_subnet.azsbn.id
}

output "securitygroup_id" {
  value = azurerm_network_security_group.aznsc.id
}

output "assoc_secgroup_subnet_id" {
  value = azurerm_subnet_network_security_group_association.my_nsg_association.id
}

output "net_interface_id" {
  value = azurerm_network_interface.aznic.id
}

output "assoc_lb_bap_net_interface_id" {
  value = azurerm_network_interface_backend_address_pool_association.my_nic_lb_pool.id
}

output "lv_machine_id" {
  value = azurerm_linux_virtual_machine.azlvm.id
}

output "lb_id" {
  value = azurerm_lb.azlb.id
}

output "lb_bap_id" {
  value = azurerm_lb_backend_address_pool.azlbpool.id
}