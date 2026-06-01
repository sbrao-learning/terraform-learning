resource "azurerm_storage_account" "my_sa"{

    name=var.saname
    resource_group_name=var.rg_name
    location=var.rg_location
    account_tier="Standard"
    account_replication_type="LRS"
}