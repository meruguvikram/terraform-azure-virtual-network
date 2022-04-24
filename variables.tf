###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "tag_environment" {
  description = "A mapping of tags to assign to the resource."
  type = string
  default = "dev"
}
variable "tag_owner" {
  description = "A mapping of tags to assign to the resource."
  type = string
  default = "Test organization"
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type = string
}
############################
#VNET variable
############################
variable "vnet_name" {
    description = "The name of the virtual network. Changing this forces a new resource to be created."
    type = string
    default = "VirtualNetwork1"
}
variable "vnet_address_space" {
    description = "The address space that is used the virtual network. You can supply more than one address space."
    type = string
    default = "10.0.0.0/16"
}
variable "subnet1_name" {
    description = "The name of the subnet."
    type = string
    default = "Subnet-1"
}
variable "subnet1_address_prefix" {
    description = "The address prefix to use for the subnet."
    type = string
    default = "10.0.1.0/24"
}
variable "subnet2_name" {
    description = "The name of the subnet."
    type = string
    default = "Subnet-2"
}
variable "subnet2_address_prefix" {
    description = "The address prefix to use for the subnet."
    type = string
    default = "10.0.2.0/24"
}