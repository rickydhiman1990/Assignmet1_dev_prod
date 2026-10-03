
resource "azurerm_resource_group" "ricrg021" {
    for_each = var.rg
    name     = each.value.name
    location = each.value.location
  
}