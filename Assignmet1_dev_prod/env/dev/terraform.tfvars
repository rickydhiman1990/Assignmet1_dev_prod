rgs = {
  rg1 = {
    name     = "aznet-dev-eus-rg"
    location = "central india"
} }

stgs = {
  stg1 = {
    name                     = "devstg021"
    resource_group_name      = "aznet-dev-eus-rg"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
} }

nics = {
  "nic1" = {
    nic_name        = "devnic01"
    nic_location    = "centralindia"
    nic_rg          = "aznet-dev-eus-rg"
    nic_subnet_name = "devsubnet001"
    nic_vnet_name   = "devvnet001"
  }

}

vnets = {
  vnet1 = {
    name                = "devvnet001"
    location            = "centralindia"
    resource_group_name = "aznet-dev-eus-rg"
    address_space       = ["10.0.0.0/16"]


  }
}

subnets = {
  subnet1 = {
    name                 = "devsubnet001"
    resource_group_name  = "aznet-dev-eus-rg"
    virtual_network_name = "devvnet001"
    address_prefixes     = ["10.0.1.0/24"]

} }


vms = {
  machine1 = {

    vm_nicname             = "devnic01"
    vm_name                = "devvm01"
    vm_location            = "centralindia"
    vm_resource_group_name = "aznet-dev-eus-rg"
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