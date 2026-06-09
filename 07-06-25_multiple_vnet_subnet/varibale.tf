variable "prefix"{}
# variable "prefix1"{}
variable "my_rg"{}
variable "location"{}
variable "myvnet"{
    type=map(object({
        name=string
        address_space=list(string)
    })
    )
}

variable "mysubnet" {
    type=map(object({
        name=string
        address_prefixes=list(string)
    }))
  
}

variable "mysubnet1" {
    type=map(object({
        name=string
        address_prefixes=list(string)
    }))
  
}