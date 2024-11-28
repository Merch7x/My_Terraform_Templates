# Associates the public route table with the public subnets
resource "aws_route_table_association" "my_public_subnet_association" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "my_public_subnet_association_2" {
  subnet_id      = aws_subnet.subnet_3.id
  route_table_id = aws_route_table.public_route_table.id
}




# Associates the private route table with the private subnets
resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.subnet_2.id
  route_table_id = aws_route_table.private_route_table_a.id
}

resource "aws_route_table_association" "private_subnet_association_2" {
  subnet_id      = aws_subnet.subnet_4.id
  route_table_id = aws_route_table.private_route_table_b.id
}
