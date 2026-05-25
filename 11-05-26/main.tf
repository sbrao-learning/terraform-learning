resource azurerm_resource_group "myrg" {
    for_each=toset(var.resource_group_name)
    name= each.value
    location= var.loc
}

resource azurerm_resource_group "myrg1"{
  for_each = var.myrgs
  name = each.key
  location= each.value

}

resource azurerm_resource_group "myrg2"{
  for_each = var.myrgs1
  name = each.value.name
  location= each.value.location
}