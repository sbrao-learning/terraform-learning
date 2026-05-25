resource "azurerm_resource_group" "resource-group"{
name = var.resource_group_name
location = var.location
}

# resource "azurerm_resource_group" "resource-group1"{
#     for_each = toset(var.resource_group_name1)
#         name = each.value
#         location = var.location
    
# }

resource "azurerm_resource_group" "resource-group1"{
    for_each = toset(var.resource_group_name1)
        name = each.value
        location = var.location
    
}

resource "azurerm_resource_group" "resource-group2"{
    for_each = var.resource_group_name2
        name = each.key
        location = each.value  
}