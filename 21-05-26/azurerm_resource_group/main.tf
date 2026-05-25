resource "azurerm_resource_group" "rgroup"{
for_each=var.myrg
name=each.key
location=each.value.location
managed_by=each.value.managed_by
tags={
    environment=each.value.env

}
}