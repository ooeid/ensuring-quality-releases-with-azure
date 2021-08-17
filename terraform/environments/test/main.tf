provider "azurerm" {
  features {}
  skip_provider_registration = "true"
  subscription_id = "c25dd7d5-e171-4e0e-b7b6-bfbc68eb98a3"
}
terraform {
  backend "azurerm" {
    storage_account_name = "tqa30511"
    container_name       = "tqa"
    key                  = "test.terraform.tfstate"
    access_key           = "u8vkJUOqEnfk9F3a+hBTVXUfATKtGwVEuwWhQ119q5JNCro4O7oagE7thMFE/BBWTizS0iaI+ngKpqHI5uQSXQ=="
  }
}

module "network" {
  source               = "../../modules/network"
  address_space        = "${var.address_space}"
  location             = "${var.location}"
  virtual_network_name = "${var.virtual_network_name}"
  application_type     = "${var.application_type}"
  resource_type        = "NET"
  resource_group       = "tqa"
  address_prefix_test  = "${var.address_prefix_test}"
}

module "nsg-test" {
  source           = "../../modules/networksecuritygroup"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "NSG"
  resource_group   = "tqa"
  subnet_id        = "${module.network.subnet_id_test}"
  address_prefix_test = "${var.address_prefix_test}"
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = "tqa"
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "publicip"
  resource_group   = "tqa"
}
module "vm" {
  source               = "../../modules/vm"
  location             = "${var.location}"
  resource_group       = "tqa"
  subnet_id            = module.network.subnet_id_test
  public_ip_address_id = module.publicip.public_ip_address_id 
  admin_username       = var.admin_username
  prefix               = var.prefix
}