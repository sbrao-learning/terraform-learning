vnet_count={
   vm1={
    name= "dev-vnet"
    resource_group_name="rg1"
    location="centralindia"
    address_space=["10.0.0.0/16"]
    env= "dev"
   }
   vm2={
    name= "prod-vnet"
    resource_group_name="rg2"
    location="centralindia"
    address_space=["10.7.0.0/16"]
    env= "prod"
   }
}