terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    version = "4.66.0" 
    }
  }

}

provider "azurerm" {

  features {}
  # resource_provider_registrations = "none"

}

resource "azurerm_resource_group" "rs_grp" {
  name     = "myrsgrp1"
  location = "West Europe"
}

# resource "azuread_user" "user2" {
#   user_principal_name = "user2@shashiaws2024gmail.onmicrosoft.com"
#   display_name        = "user2"
#   password            = "user@123456"
# }

# locals {
#   common_tags = {
#     environment = "dev"
#     owner = "personal"
#     service_name = "forum"

#   }
# }
resource "azurerm_storage_account" "staccount" {
  name                     = "staccnt12349999"
  # resource_group_name      = azurerm_resource_group.rs_grp.name
  # location                 = azurerm_resource_group.rs_grp.location
  resource_group_name      = "myrsgrp1"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # tags = {
  #   Name = local.common_tags.service_name
  #   Environment = local.common_tags.environment
  #   Owner = local.common_tags.owner
  # }

}

output "resource_account" {
 value = azurerm_storage_account.staccount.id
}
