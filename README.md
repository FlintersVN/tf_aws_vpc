# tf_aws_vpc

## Requirements

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 0.12 |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                       | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_internet_gateway.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)                               | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)                                                             | resource |
| [aws_vpc_ipv4_cidr_block_association.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_ipv4_cidr_block_association) | resource |

## Inputs

| Name                                                                                                                              | Description                                                          | Type           | Default     | Required |
| --------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------- | ----------- | :------: |
| <a name="input_additional_cidr_blocks"></a> [additional_cidr_blocks](#input_additional_cidr_blocks)                               | A list of additional IPv4 CIDR blocks to associate with the VPC      | `list(string)` | `null`      |    no    |
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign_generated_ipv6_cidr_block](#input_assign_generated_ipv6_cidr_block) | Whether to assign generated ipv6 cidr block to the VPC               | `bool`         | `false`     |    no    |
| <a name="input_cidr_block"></a> [cidr_block](#input_cidr_block)                                                                   | CIDR for the VPC                                                     | `string`       | n/a         |   yes    |
| <a name="input_enable_classiclink"></a> [enable_classiclink](#input_enable_classiclink)                                           | A boolean flag to enable/disable ClassicLink for the VPC             | `bool`         | `false`     |    no    |
| <a name="input_enable_classiclink_dns_support"></a> [enable_classiclink_dns_support](#input_enable_classiclink_dns_support)       | A boolean flag to enable/disable ClassicLink DNS Support for the VPC | `bool`         | `false`     |    no    |
| <a name="input_enable_dns_hostnames"></a> [enable_dns_hostnames](#input_enable_dns_hostnames)                                     | A boolean flag to enable/disable DNS hostnames in the VPC            | `bool`         | `true`      |    no    |
| <a name="input_enable_dns_support"></a> [enable_dns_support](#input_enable_dns_support)                                           | A boolean flag to enable/disable DNS support in the VPC              | `bool`         | `true`      |    no    |
| <a name="input_enable_internet_gateway"></a> [enable_internet_gateway](#input_enable_internet_gateway)                            | A boolean flag to enable/disable Internet Gateway creation           | `bool`         | `true`      |    no    |
| <a name="input_instance_tenancy"></a> [instance_tenancy](#input_instance_tenancy)                                                 | A tenancy option for instances launched into the VPC                 | `string`       | `"default"` |    no    |
| <a name="input_vpc_name"></a> [vpc_name](#input_vpc_name)                                                                         | VPC name                                                             | `string`       | `""`        |    no    |
| <a name="input_vpc_tags"></a> [vpc_tags](#input_vpc_tags)                                                                         | VPC tags                                                             | `map`          | `{}`        |    no    |

## Outputs

| Name                                                                                                                                                           | Description                                                          |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| <a name="output_additional_cidr_blocks"></a> [additional_cidr_blocks](#output_additional_cidr_blocks)                                                          | A list of the additional IPv4 CIDR blocks associated with the VPC    |
| <a name="output_additional_cidr_blocks_to_association_ids"></a> [additional_cidr_blocks_to_association_ids](#output_additional_cidr_blocks_to_association_ids) | A map of the additional IPv4 CIDR blocks to VPC CIDR association IDs |
| <a name="output_gateway_id"></a> [gateway_id](#output_gateway_id)                                                                                              | The ID of the Internet Gateway                                       |
| <a name="output_ipv6_cidr_block"></a> [ipv6_cidr_block](#output_ipv6_cidr_block)                                                                               | The IPv6 CIDR block                                                  |
| <a name="output_vpc_cidr_block"></a> [vpc_cidr_block](#output_vpc_cidr_block)                                                                                  | The CIDR block of the VPC                                            |
| <a name="output_vpc_default_network_acl_id"></a> [vpc_default_network_acl_id](#output_vpc_default_network_acl_id)                                              | The ID of the network ACL created by default on VPC creation         |
| <a name="output_vpc_default_route_table_id"></a> [vpc_default_route_table_id](#output_vpc_default_route_table_id)                                              | The ID of the route table created by default on VPC creation         |
| <a name="output_vpc_default_security_group_id"></a> [vpc_default_security_group_id](#output_vpc_default_security_group_id)                                     | The ID of the security group created by default on VPC creation      |
| <a name="output_vpc_id"></a> [vpc_id](#output_vpc_id)                                                                                                          | The ID of the VPC                                                    |
| <a name="output_vpc_ipv6_association_id"></a> [vpc_ipv6_association_id](#output_vpc_ipv6_association_id)                                                       | The association ID for the IPv6 CIDR block                           |
| <a name="output_vpc_main_route_table_id"></a> [vpc_main_route_table_id](#output_vpc_main_route_table_id)                                                       | The ID of the main route table associated with this VPC              |
