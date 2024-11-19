variable "private_ecr_repo" {
  description = "The repository to grant access to"
  default     = "arn:aws:ecr:eu-west-2:767397947330:repository/flask-blog"
  type        = string
}

variable "container_image" {
  description = "The container image to pull"
  default     = "767397947330.dkr.ecr.eu-west-2.amazonaws.com/flask-blog:latest"
  type        = string
}

variable "container_name" {
  description = "A name for the container"
  type        = string
}

variable "container_port" {
  description = "The port to assign the container"
  type        = string
}

variable "power" {
  description = "The vcpu, memory and price band to associate with the container"
  default     = "micro"
  type        = string
}

variable "scale" {
  description = "The container count"
  default     = 1
  type        = number
}

variable "tags" {
  description = "resource tags"
  type        = string
}
