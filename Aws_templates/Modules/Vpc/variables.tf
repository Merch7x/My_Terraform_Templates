variable "vpc_cidr" {
  description = "A cidr block for the vpc"
  default     = "10.0.0.0/16"
  type        = string
}

variable "subnet_cidr" {
  description = "A cidr block for the subnet"
  default     = "10.0.10.0/24"
  type        = string

}
variable "availability_zone" {
  description = "the availability zone to be selected"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "security_grp_tag_name" {
  description = "security group name"
}

variable "vpc_name_tag" {
  description = "The tags for the vpc"
  type        = string
}

variable "igw_name_tag" {
  description = "Internet Gateway tag"
  type        = string
}

variable "default_rt_name_tag" {
  description = "default route table name tag"
  type        = string
}

variable "subnet_name_tag" {
  description = "subnet name tag"
  type        = string
}

