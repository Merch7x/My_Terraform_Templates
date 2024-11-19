## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | v2.5.2 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | v4.0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |
| <a name="provider_local"></a> [local](#provider\_local) | v2.5.2 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | v4.0.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.my-vm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_key_pair.my-lightsail-kp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_key_pair) | resource |
| [local_file.private_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.lg_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone to launch the instance in | `string` | `"eu-west-2a"` | no |
| <a name="input_blueprint_id"></a> [blueprint\_id](#input\_blueprint\_id) | The underlying os | `string` | `"amazon_linux_2"` | no |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The vcpu and memory bands and pricing range | `string` | `"nano_3_0"` | no |
| <a name="input_private_key_local_filename"></a> [private\_key\_local\_filename](#input\_private\_key\_local\_filename) | The filename to call your pem file | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to associate with the vm | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the vm | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lightsail_public_ip"></a> [lightsail\_public\_ip](#output\_lightsail\_public\_ip) | The public ip of the vm |
