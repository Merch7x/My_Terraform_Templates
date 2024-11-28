variable "vpc_cidr" {
  description = "A cidr block for the vpc"
  default     = "10.0.0.0/16"
  type        = string
}


variable "subnet_1_cidr" {
  description = "A cidr block for the subnet"
  default     = "10.0.0.0/24"
  type        = string

}

variable "subnet_2_cidr" {
  description = "A cidr block for the subnet"
  default     = "10.0.1.0/24"
  type        = string

}

variable "subnet_3_cidr" {
  description = "A cidr block for the subnet"
  default     = "10.0.2.0/24"
  type        = string

}

variable "subnet_4_cidr" {
  description = "A cidr block for the subnet"
  default     = "10.0.3.0/24"
  type        = string

}

variable "availability_zone" {
  description = "the availability zone to be selected"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2c"]
}

variable "region" {
  description = "The region to launch resources in"
  default     = "eu-west-2"
}

variable "access_key" {
  description = "IAM access_key"
  type        = string
}

variable "secret_key" {
  description = "IAM secret_key"
  type        = string
}
