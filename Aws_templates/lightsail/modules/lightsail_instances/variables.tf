variable "vm_name" {
  description = "The name of the vm"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to launch the instance in"
  default     = "eu-west-2a"
  type        = string
}

variable "blueprint_id" {
  description = "The underlying os"
  default     = "amazon_linux_2"
}

variable "bundle_id" {
  description = "The vcpu and memory bands and pricing range"
  default     = "nano_3_0"
  type        = string
}

variable "tags" {
  description = "tags to associate with the vm"
  type        = string
}

variable "private_key_local_filename" {
  description = "The filename to call your pem file"
  type        = string
}
