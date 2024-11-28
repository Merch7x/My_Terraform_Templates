#default secrity group is a vpc level resource
resource "aws_default_security_group" "my_sec_group" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.common-tags.Name}-default-sec_grp"
  }
}
