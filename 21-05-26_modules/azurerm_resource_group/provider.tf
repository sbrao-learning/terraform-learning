terraform{
    required_providers{
        azurerm={
            source="hashicorp/azurerm"
            version="~>4.66"
    }
    }
    # backend "providers"{
    #     resource_group_name="my-rg"
    #     storage_account_name="mystterrafomr"
    #     container_name="tfstate"
    #     key="dev.terrafomr.tfstate"
    # }
}

provider "azurerm"{
    features{}
}