terraform{
    required_providers{
        azurerm={
            source="hashicorp/azurerm"
            version="~>4.66"
        }
    }
    # backend "azurerm"{
    #     resource_group_name= "tfsate"
    #     storage_account_name="tfstateaccnt"
    #     container_name="tfstatecontainer"
    #     key="prod.tfstate"
    # }

}

provider "azurerm"{
    features{}
}
