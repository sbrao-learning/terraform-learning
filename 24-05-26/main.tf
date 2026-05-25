module "namerg" {
  source="./modules/rg"
  rg-name=var.rg-name
  location=var.rg-location
}

module "namesa"{
  source="./modules/sa"
  depends_on=[module.namerg]
  sa-name=var.saname
  rg-name=module.namerg.rg-name
rg-location=module.namerg.rg-location
}