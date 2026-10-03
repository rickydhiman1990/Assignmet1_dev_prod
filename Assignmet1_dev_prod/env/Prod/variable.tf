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
    name                          = string
    location                      = string
    resource_group_name           = string
    ip_configuration_name         = string
    subnet_id                     = string
    private_ip_address_allocation = string
  }))
}

variable "vms" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    size                = string
    admin_username      = string
    admin_password      = string
    nic_key             = string
  }))
}