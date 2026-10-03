variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "stgs" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "nics" {
  type = map(object({
    nic_name        = string
    nic_location    = string
    nic_rg          = string
    nic_subnet_name = string
    nic_vnet_name   = string
  }))
}

variable "vms" {
  type = map(object({
    vm_nicname             = string
    vm_name                = string
    vm_location            = string
    vm_resource_group_name = string
    vm_size                = string
    vm_publisher           = string
    vm_offer               = string
    vm_sku                 = string
    vm_version             = string
    s_name                 = string
    s_caching              = string
    s_create_option        = string
    s_managed_disk_type    = string
    o_computer_name        = string
    vm_admin_username      = string
    vm_admin_password      = string
  }))
}