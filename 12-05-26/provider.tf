terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.66"
    }
  }

  # backend azurerm{
  #     resource_group_name="myrg"
  #     storage_account_name="mtstaccnt"
  #     container_name="tfstate"
  #     key="terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}
