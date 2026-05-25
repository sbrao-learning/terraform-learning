resource "azurerm_resource_group" "myrg" {
  for_each = var.rg1

  name     = "rg-${each.key}"
  location = each.value.location
  tags = {
    environment = each.value.env
  }


}
