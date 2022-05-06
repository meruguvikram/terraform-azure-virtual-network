output "id" {
  description = "The virtual NetworkConfiguration ID."
  value       = "${azurerm_virtual_network.main.id}"
  sensitive = false
}

output "name" {
  description = "The name of the virtual network."
  value       = "${azurerm_virtual_network.main.name}"
  sensitive = false
}

output "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  value       = "${azurerm_virtual_network.main.resource_group_name}"
  sensitive = false
}

output "location" {
  description = "The location/region where the virtual network is created."
  value       = "${azurerm_virtual_network.main.location}"
  sensitive = false
}

output "address_space" {
  description = "The list of address spaces used by the virtual network."
  value       = "${azurerm_virtual_network.main.address_space}"
  sensitive = false
}

output "subnet_id" {
  description = "The subnet ID"
  value       = "${azurerm_subnet.main.*.id}"
  sensitive = false
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = "${azurerm_subnet.main.*.name}"
  sensitive = false
}

output "subnet_resource_group_name" {
  description = "The name of the resource group in which the subnet is created in."
  value       = "${azurerm_subnet.main.*.resource_group_name}"
  sensitive = false
}

output "subnet_virtual_network_name" {
  description = "The name of the virtual network in which the subnet is created in"
  value       = "${azurerm_subnet.main.*.virtual_network_name}"
  sensitive = false
}

output "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  value       = "${azurerm_subnet.main.*.address_prefixes}"
  sensitive = false
}