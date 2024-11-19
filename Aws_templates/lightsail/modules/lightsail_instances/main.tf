resource "tls_private_key" "lg_private_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
resource "aws_lightsail_key_pair" "my-lightsail-kp" {
  name       = "lg_key_pair"
  public_key = tls_private_key.lg_private_key.public_key_openssh
}


resource "local_file" "private_key" {
  content         = tls_private_key.lg_private_key.private_key_pem
  filename        = var.private_key_local_filename
  file_permission = 400
}

# output "private_key_pem" {
#   value       = tls_private_key.lightsail_key.private_key_pem
#   sensitive   = true
#   description = "The private key for SSH access to Lightsail instances."
# }

resource "aws_lightsail_instance" "my-vm" {
  name              = var.vm_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = aws_lightsail_key_pair.my-lightsail-kp.name
  tags = {
    name = var.tags
  }
}
