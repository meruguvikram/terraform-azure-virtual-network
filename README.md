<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/virtual_network) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the virtual network. | `string` | n/a | yes |
| <a name="input_subnet1_address_prefix"></a> [subnet1\_address\_prefix](#input\_subnet1\_address\_prefix) | The address prefix to use for the subnet. | `string` | `"10.0.1.0/24"` | no |
| <a name="input_subnet1_name"></a> [subnet1\_name](#input\_subnet1\_name) | The name of the subnet. | `string` | `"Subnet-1"` | no |
| <a name="input_subnet2_address_prefix"></a> [subnet2\_address\_prefix](#input\_subnet2\_address\_prefix) | The address prefix to use for the subnet. | `string` | `"10.0.2.0/24"` | no |
| <a name="input_subnet2_name"></a> [subnet2\_name](#input\_subnet2\_name) | The name of the subnet. | `string` | `"Subnet-2"` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | The address space that is used the virtual network. You can supply more than one address space. | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | `"VirtualNetwork1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address_space"></a> [address\_space](#output\_address\_space) | The list of address spaces used by the virtual network. |
| <a name="output_id"></a> [id](#output\_id) | The virtual NetworkConfiguration ID. |
| <a name="output_location"></a> [location](#output\_location) | The location/region where the virtual network is created. |
| <a name="output_name"></a> [name](#output\_name) | The name of the virtual network. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group in which to create the virtual network. |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | One or more subnet ID |
<!-- END_TF_DOCS -->

## How to use

```
module "virtual-network" {
  source  = "spy86/virtual-network/azure"
  version = "1.0.1"
  resource_group_name = "weu-test-rg"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  subnet1_address_prefix = "10.0.1.0/24"
  subnet1_name = "Subnet-1"
  subnet2_address_prefix = "10.0.2.0/24"
  subnet2_name = "Subnet-2"
  vnet_address_space = "10.0.0.0/16"
  vnet_name = "VirtualNetwork"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}
```