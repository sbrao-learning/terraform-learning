subnet_dev={
    subnet1={
        name="dev-subnet1"
        rg-name="rg1"
        #location="centralindia"
        vnet-name= "dev-vnet"
        address_prefixes=["10.0.1.0/24"]

    }
     subnet2={
        name="dev-subnet2"
        rg-name="rg1"
        #location="centralindia"
        vnet-name= "dev-vnet"
        address_prefixes=["10.0.2.0/24"]

    }
}

    subnet_prod={
       subnet1={
        name="prod-subnet1"
        rg-name="rg2"
        #location="centralindia"
        vnet-name="prod-vm"
        address_prefixes=["10.7.1.0/24"]

    }
       subnet2={
        name="prod-subnet2"
        rg-name="rg2"
        #location="centralindia"
        vnet-name="prod-vnet"
        address_prefixes=["10.7.1.0/24"]

    }
    }