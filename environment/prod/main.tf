module "rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs

}
module "vnet" {
  depends_on = [module.rgs]
  source     = "../../modules/azurerm_vnet"
  vnet       = var.vnet
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet
}