## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ecr_pull_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ecr_image_puller_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_ecr_pull_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lightsail_container_service.my_container](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_container_service) | resource |
| [aws_lightsail_container_service_deployment_version.flask-deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_container_service_deployment_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | The container image to pull | `string` | `"767397947330.dkr.ecr.eu-west-2.amazonaws.com/flask-blog:latest"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | A name for the container | `string` | n/a | yes |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | The port to assign the container | `string` | n/a | yes |
| <a name="input_power"></a> [power](#input\_power) | The vcpu, memory and price band to associate with the container | `string` | `"micro"` | no |
| <a name="input_private_ecr_repo"></a> [private\_ecr\_repo](#input\_private\_ecr\_repo) | The repository to grant access to | `string` | `"arn:aws:ecr:eu-west-2:767397947330:repository/flask-blog"` | no |
| <a name="input_scale"></a> [scale](#input\_scale) | The container count | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | resource tags | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_endpoint"></a> [public\_endpoint](#output\_public\_endpoint) | The public endpoint to access the container |
