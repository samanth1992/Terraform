
data "azurerm_resource_group" "resourcegroup" {
  name     = "${var.resource_group}"
  }
resource "azurerm_app_service_plan" "test" {
  count ="${var.appserviceplancount}"
  name                = "${var.appserviceplanname}${count.index}"
  location            = "${data.azurerm_resource_group.resourcegroup.location}"
  resource_group_name = "${data.azurerm_resource_group.resourcegroup.name}"
  kind                = "${var.kind}"
  reserved = "${var.kind == "Linux" ? true : null}"

  sku {
    tier = "${var.tier}"
    size = "${var.size}"
  }
  tags = {
    environment = "${var.environment}"
    projectname = "${var.projectname}"
  }

}