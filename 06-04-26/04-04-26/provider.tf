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


}



# resource "azuread_user" "user2" {
#   user_principal_name = "user2@shashiaws2024gmail.onmicrosoft.com"
#   display_name        = "user2"
#   password            = "user@123456"
# }

