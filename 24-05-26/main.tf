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