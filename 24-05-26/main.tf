module "namerg" {
  source="./modules/rg"
  rg_name=var.rg_name
  rg_location=var.rg_location
}

module "namesa"{
  source="./modules/sa"
  depends_on=[module.namerg]
  saname=var.saname
  rg_name=var.rg_name
  rg_location=var.rg_location
}

module "vnet"{
 source="./modules/vnet"
 depends_on = [ module.namerg ]
 vnetname=var.vnetname
 rg_name = var.rg_name
 rg_location = var.rg_location
 addrspace = var.addrspace
 subnetname = var.subnetname
 addprefix = var.addprefix

}