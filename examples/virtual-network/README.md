# Terraform Module: Azure Virtual Network

This Terraform module provisions an Azure virtual network with specified subnets.

## Usage

### Example

```hcl
provider "azurerm" {
features {}
}

module "virtual-network" {
  source  = "Think-Cube/virtual-network/azure"
  version = "1.0.0"
  resource_group_name = "weu-test-rg"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  vnet_address_space = "10.0.0.0/16"
  vnet_name = "VirtualNetwork"
  subnet_prefix = {
    subnet_1 = {
      ip = ["10.0.1.0/24"]
      name  = "Subnet_1"
    }
    subnet_2 = {
      ip = ["10.0.2.0/24"]
      name = "Subnet_2"
    }
    subnet_3 = {
      ip = ["10.0.3.0/24"]
      name = "Subnet_3"
    }
  }
  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
} 
}
```

### Variables

* `resource_group_name`: Name of the Azure resource group.
* `environment`: Environment for the resources (e.g., dev, prod).
* `region`: Azure region for the resources.
* `resource_group_location`: Location of the Azure resource group.
* `vnet_address_space`: Address space for the virtual network.
* `vnet_name`: Name of the virtual network.
* `subnet_prefix`: Map containing subnet prefixes and names.
* `default_tags`: Default tags to be applied to all resources.

### Outputs

* `id`: The virtual NetworkConfiguration ID.
* `name`: The name of the virtual network.
* `resource_group_name`: The name of the resource group in which to create the virtual network.
* `location`: The location/region where the virtual network is created.
* `address_space`: The list of address spaces used by the virtual network.
* `azure_subnet_id`: Lists the ID's of the subnets.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
