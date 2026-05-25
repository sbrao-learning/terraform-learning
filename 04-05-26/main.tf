resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_resource_group" "rg2" {
  for_each = toset(["rg-terraform-04-05-26-1", "rg-terraform-04-05-26-2", "rg-terraform-04-05-26-3", "rg-terraform-04-05-26-3"])
  name     = each.value
  location = var.location
}

resource "azurerm_resource_group" "rg3" {
  for_each = var.rg_names1
  name     = each.key
  location = each.value
}