output "lightsail_public_ip" {
  description = "The public ip of the vm"
  value       = aws_lightsail_instance.my-vm.public_ip_address
}
