

data "azurerm_subnet" "ricsub021" {
  for_each = var.nic
  name                 = each.value.nic_subnet_name
  resource_group_name  = each.value.nic_rg
  virtual_network_name = each.value.nic_vnet_name
  
}


resource "azurerm_network_interface" "nicric" {
    for_each = var.nic
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_rg

  ip_configuration {
    name                          = "pansingh"
    subnet_id                     = data.azurerm_subnet.ricsub021[each.key].id
    private_ip_address_allocation = "dynamic"
  }
}