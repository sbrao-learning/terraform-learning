prefix="dev"
# prefix1="prod"
my_rg="myrg"
location="eastus"
myvnet={
  vnet1={
    name="vnet"
    address_space=["10.143.0.0/16"]
  }
  vnet2={
    name="vnet1"
    address_space=["10.58.0.0/16"]
  }

}

mysubnet={

    subnet1={
         name="subnet1"
         address_prefixes=["10.143.1.0/24"]
    }
    subnet2={
         name="subnet1"
         address_prefixes=["10.143.2.0/24"]
    }
}

mysubnet1={

    subnet1={
         name="subnet1"
         address_prefixes=["10.58.1.0/24"]
    }
    subnet2={
         name="subnet1"
         address_prefixes=["10.58.2.0/24"]
    }
}