# resource "aws_iam_role" "ecr_image_puller_role" {
#   name = "ecr_image_puller_role"

#   assume_role_policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Principal" : {
#           "Service" : "lightsail.amazonaws.com"
#         },
#         "Action" : "sts:AssumeRole"
#       }
#     ]
#   })
# }

# # Attach ECR Pull Policy to the Role
# resource "aws_iam_policy" "ecr_pull_policy" {
#   name        = "ecr_pull_policy"
#   description = "Policy allowing access to pull images from ECR"
#   policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "ecr:GetAuthorizationToken",
#           "ecr:BatchCheckLayerAvailability",
#           "ecr:GetDownloadUrlForLayer",
#           "ecr:BatchGetImage"
#         ],
#         "Resource" : "arn:aws:ecr:eu-west-2:767397947330:repository/flask-blog"
#       }
#     ]
#   })
# }


# resource "aws_iam_role_policy_attachment" "attach_ecr_pull_policy" {
#   role       = aws_iam_role.ecr_image_puller_role.name
#   policy_arn = aws_iam_policy.ecr_pull_policy.arn
# }



resource "aws_lightsail_container_service" "my_container" {
  name        = var.container_name
  power       = var.power
  scale       = var.scale
  is_disabled = false

  private_registry_access {
    ecr_image_puller_role {
      is_active = true
    }
  }

  tags = {
    name = var.tags
  }
}

resource "aws_lightsail_container_service_deployment_version" "flask-deployment" {
  container {
    container_name = var.container_name
    image          = var.container_image

    ports = {
      5000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = var.container_name
    container_port = var.container_port

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }
  service_name = aws_lightsail_container_service.my_container.name
}
