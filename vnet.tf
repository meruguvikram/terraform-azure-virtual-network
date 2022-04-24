resource "azurerm_virtual_network" "main" {
  name                = "${var.environment}-${var.vnet_name}-${var.region}-vnet"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  address_space       = ["${var.vnet_address_space}"]

  subnet {
    name           = "${var.subnet1_name}"
    address_prefix = "${var.subnet1_address_prefix}"
  }

  subnet {
    name           = "${var.subnet2_name}"
    address_prefix = "${var.subnet2_address_prefix}"
  }

  tags = {
    environment = "${var.tag_environment}"
    owner-department = "${var.tag_owner}"
  }
}