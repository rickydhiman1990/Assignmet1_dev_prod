rgs = {
  rg1 = {
    name     = "aznet-prod-eus-rg"
    location = "central india"
} }

stgs = {
  stg1 = {
    name                     = "prodstg021"
    resource_group_name      = "aznet-prod-eus-rg"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
} }

nics = {
  "nic1" = {
    nic_name        = "prodnic01"
    nic_location    = "centralindia"
    nic_rg          = "aznet-prod-eus-rg"
    nic_subnet_name = "prodsubnet001"
    nic_vnet_name   = "prodvnet001"
  }

}

vnets = {
  vnet1 = {
    name                = "prodvnet001"
    location            = "centralindia"
    resource_group_name = "aznet-prod-eus-rg"
    address_space       = ["10.0.0.0/16"]


  }
}

subnets = {
  subnet1 = {
    name                 = "prodsubnet001"
    resource_group_name  = "aznet-prod-eus-rg"
    virtual_network_name = "prodvnet001"
    address_prefixes     = ["10.0.1.0/24"]

} }


vms = {
  machine1 = {

    vm_nicname             = "prodnic01"
    vm_name                = "prodvm01"
    vm_location            = "centralindia"
    vm_resource_group_name = "aznet-prod-eus-rg"
    vm_size                = "Standard_D2s_v3"
    vm_publisher           = "Canonical"
    vm_offer               = "0001-com-ubuntu-server-jammy"
    vm_sku                 = "22_04-lts"
    vm_version             = "latest"
    s_name                 = "myosdisk1"
    s_caching              = "ReadWrite"
    s_create_option        = "FromImage"
    s_managed_disk_type    = "Standard_LRS"
    o_computer_name        = "hostname"
    vm_admin_username       = "testadmin"
    vm_admin_password       = "Password1234!"
  }
}