
data "azurerm_network_interface" "nic" {
  for_each = var.vm
  name                = each.value.vm_nicname
  resource_group_name = each.value.vm_resource_group_name
  
}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vm
  name                            = each.value.vm_name
  resource_group_name             = each.value.vm_resource_group_name
  location                        = each.value.vm_location
  size                            = each.value.vm_size
  admin_username                  = each.value.vm_admin_username
  admin_password                  = each.value.vm_admin_password
  disable_password_authentication = false
  network_interface_ids           = [
  data.azurerm_network_interface.nic[each.key].id
]

  os_disk {
    caching              = each.value.s_caching
    storage_account_type = each.value.s_managed_disk_type
   
  }

  source_image_reference {
    publisher = each.value.vm_publisher
    offer     = each.value.vm_offer
    sku       = each.value.vm_sku
    version   = "latest"
  }
}
