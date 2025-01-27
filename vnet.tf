resource "azurerm_virtual_network" "main" {
  name                = "${var.environment}-${var.vnet_name}-${var.region}-vnet"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = ["${var.vnet_address_space}"]
  dns_servers         = var.vnet_custom_dns
  tags                = var.default_tags
}
