# resource "azurerm_storage_account" "staccount" {
#   name                     = "staccnt1234"
#   resource_group_name      = azurerm_resource_group.rs_grp.name
#   location                 = azurerm_resource_group.rs_grp.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     Name = local.common_tags.service_name
#     Environment = local.common_tags.environment
#     Owner = local.common_tags.owner
#   }

# }
