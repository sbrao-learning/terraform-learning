terraform {
  required_providers{
    source="hashicorp/azurerm"
    version="~>4.66"
  }
}

provider "azurerm" {
  features{}
}