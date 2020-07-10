variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}
provider "azurerm"{
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  tenant_id ="${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
}
module "appserviceplan" {
  source = "C:/Users/testadmin/Desktop/Terraform/Appserviceplan"
  resource_group = "terraform2"
appserviceplanname = "terraformtest"
kind = "Windows"
tier = "Standard"
size = "S1"
appserviceplancount = "1"
environment = "POC"
projectname = "terraform"
  
}
