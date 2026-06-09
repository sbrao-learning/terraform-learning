terraform {
  required_providers {
    azurerm={
        source="hashicorp/azurerm"
        version="~>4.67"
    }
  }
#   backend "azurerm" {
#     resource_group_name = "my_rg"
#     storage_account_name = "mysa9999"
#     container_name = "mtstatefulcontainer"
#     key="dev_terraform_statefile"
#   }
}

provider "azurerm" {
    features {}
  
}