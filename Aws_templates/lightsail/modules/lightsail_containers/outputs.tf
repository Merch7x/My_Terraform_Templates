output "public_endpoint" {
  description = "The public endpoint to access the container"
  value       = aws_lightsail_container_service.my_container.url
}
