resource "azurerm_virtual_network" "myvnet" {
    name=var.vnetname
    resource_group_name =var.rg_name
    location=var.rg_location
    address_space=var.addrspace
}

resource "azurerm_subnet" "subnet1"{
    name=var.subnetname
    virtual_network_name = azurerm_virtual_network.myvnet.name
    resource_group_name = var.rg_name
    address_prefixes = var.addprefix
}