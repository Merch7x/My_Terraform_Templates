## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.77.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.my_sec_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group) | resource |
| [aws_eip.nat_1_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.nat_2_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.my_Igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gateway_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_gateway_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.private_route_table_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.private_route_table_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.my_public_subnet_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.my_public_subnet_association_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_subnet_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_subnet_association_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.subnet_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.subnet_4](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.my_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | IAM access\_key | `string` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | the availability zone to be selected | `list(string)` | <pre>[<br/>  "eu-west-2a",<br/>  "eu-west-2c"<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | The region to launch resources in | `string` | `"eu-west-2"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | IAM secret\_key | `string` | n/a | yes |
| <a name="input_subnet_1_cidr"></a> [subnet\_1\_cidr](#input\_subnet\_1\_cidr) | A cidr block for the subnet | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_2_cidr"></a> [subnet\_2\_cidr](#input\_subnet\_2\_cidr) | A cidr block for the subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_subnet_3_cidr"></a> [subnet\_3\_cidr](#input\_subnet\_3\_cidr) | A cidr block for the subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_subnet_4_cidr"></a> [subnet\_4\_cidr](#input\_subnet\_4\_cidr) | A cidr block for the subnet | `string` | `"10.0.3.0/24"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | A cidr block for the vpc | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | The default security grp id |
| <a name="output_subnet_1_id"></a> [subnet\_1\_id](#output\_subnet\_1\_id) | public subnet |
| <a name="output_subnet_2_id"></a> [subnet\_2\_id](#output\_subnet\_2\_id) | private subnet |
| <a name="output_subnet_3_id"></a> [subnet\_3\_id](#output\_subnet\_3\_id) | public subnet |
| <a name="output_subnet_4_id"></a> [subnet\_4\_id](#output\_subnet\_4\_id) | private subnet |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The vpc id |
