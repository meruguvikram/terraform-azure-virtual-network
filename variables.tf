variable "environment" {
  description = "Variable that defines the name of the environment."
  type        = string
  default     = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default = {
    "ManagedByTerraform" = "True"
  }
}
variable "region" {
  description = "Region in which resources are deployed."
  type        = string
  default     = "weu"
}
variable "resource_group_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}
variable "vnet_name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
  default     = "VirtualNetwork1"
}
variable "vnet_address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space."
  type        = string
  default     = "10.0.0.0/16"
}
variable "subnet_prefix" {
  description = "List of subnets with their prefixes and optional service endpoints and delegations"
  type = map(object({
    name              = string
    ip                = list(string)
    service_endpoints = optional(list(object({
      service = string
    })), [])
    delegations = optional(list(object({
      name         = string
      service_name = string
      actions      = list(string)
    })), [])
    private_endpoint_network_policies = optional(string, null)
    private_link_service_network_policies_enabled = optional(string, null)
  }))
  default = {
    example-subnet-1 = {
      name = "subnet-1"
      ip   = ["10.0.1.0/24"]
      service_endpoints = [
        {
          service = "Microsoft.Storage"
        },
        {
          service = "Microsoft.Sql"
        }
      ]
      delegations = [
        {
          name         = "delegation1"
          service_name = "Microsoft.Web/serverFarms"
          actions      = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
      ]
      private_endpoint_network_policies = "Disabled"
      private_link_service_network_policies_enabled = false
    }
    example-subnet-2 = {
      name = "subnet-2"
      ip   = ["10.0.2.0/24"]
      service_endpoints = [
        {
          service = "Microsoft.Storage"
        }
      ]
      delegations = [
        {
          name         = "delegation2"
          service_name = "Microsoft.Web/serverFarms"
          actions      = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
      ]
      private_endpoint_network_policies = "Disabled"
      private_link_service_network_policies_enabled = false
    }
  }
}
variable "vnet_custom_dns" {
  description = "If applicable, a list of custom DNS servers to use inside your virtual network.  Unset will use default Azure-provided resolver"
  type        = list(string)
  default     = null
}
