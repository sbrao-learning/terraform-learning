resource "azurerm_resource_group" "this" {
    name=var.my_rg
    location = var.location
  
}

resource "azurerm_virtual_network" "this" {
    for_each = var.myvnet
  name="${var.prefix}-${each.value.name}"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  address_space = each.value.address_space
}

resource "azurerm_subnet" "this" {
  for_each=var.mysubnet
  name= each.value.name
  resource_group_name = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this["vnet1"].name
  address_prefixes = each.value.address_prefixes

}

resource "azurerm_subnet" "this1" {
  for_each=var.mysubnet1
  name= each.value.name
  resource_group_name = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this["vnet2"].name
  address_prefixes = each.value.address_prefixes

}