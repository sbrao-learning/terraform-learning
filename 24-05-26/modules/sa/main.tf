resource "azurerm_storage_account_name" "my-sa"{

    name=var.saname
    resource_group_name=var.rg-name
    location=var.rg-location
    account_tier="Standard"
    account_replication_type="LRS"
}