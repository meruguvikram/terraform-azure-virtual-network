resource "azurerm_subnet" "main" {
    name = "${lookup(element(var.subnet_prefix, count.index), "name")}"
    count = "${length(var.subnet_prefix)}"
    resource_group_name = "${data.azurerm_resource_group.rg.name}"
    virtual_network_name = "${var.environment}-${var.vnet_name}-${var.region}-vnet"
    address_prefix = "${lookup(element(var.subnet_prefix, count.index), "ip")}"
}