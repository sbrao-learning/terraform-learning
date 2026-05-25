resource "azurerm_virtual_network" "vm"{
    for_each=var.vm_type
 name= each.value.name
 resource_group_name = each.value.resource_group_name
 location=each.value.location
 address_space = each.value.address_space
 tags={
     env=each.value.env
 }
}