

module "rg" {
  source = "../child_module/Azurerm_resource_group"
  rg     = var.rgs

}
module "storage_account" {
  source     = "../child_module/Azurerm_storage_account"
  stg        = var.stgs
  depends_on = [module.rg]
}


module "vnet" {
  source     = "../child_module/Azurerm_vnet"
  vnet       = var.vnets
  depends_on = [module.rg]
}

module "subnet" {
  source     = "../child_module/Azurerm_subnet"
  subnet     = var.subnets
  depends_on = [module.rg, module.vnet]
}

module "nic" {
  source     = "../child_module/Azurerm_nic"
  nic        = var.nics
  
  depends_on = [module.subnet]
}

module "vm" {
  source     = "../child_module/Azurerm_vm"
  vm         = var.vms
  
  depends_on = [module.rg, module.nic]
}