variable "subnet_dev" {
    type=map(object({
        name= string
        rg-name=string
        vnet-name=string
        address_prefixes=list(string)
    })
    )
}
variable "subnet_prod" {
       type=map(object({
        name= string
        rg-name=string
        vnet-name=string
        address_prefixes=list(string)
       })
       )
}