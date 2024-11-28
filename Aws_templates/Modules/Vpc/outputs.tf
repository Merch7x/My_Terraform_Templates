output "vpc_id" {
  description = "The vpc id"
  value       = aws_vpc.my_vpc.id
}

output "default_security_group_id" {
  description = "The default security grp id"
  value       = aws_default_security_group.my_sec_group.id
}


output "subnet_1_id" {
  description = "public subnet"
  value       = aws_subnet.subnet_1.id

}

output "subnet_2_id" {
  description = "private subnet"
  value       = aws_subnet.subnet_2.id

}

output "subnet_3_id" {
  description = "public subnet"
  value       = aws_subnet.subnet_3.id

}

output "subnet_4_id" {
  description = "private subnet"
  value       = aws_subnet.subnet_4

}
