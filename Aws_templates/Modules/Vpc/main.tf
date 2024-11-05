terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = var.vpc_name_tag
  }
}

resource "aws_internet_gateway" "my_Igw" {
  vpc_id = aws_vpc.Blog_vpc.id
  tags = {
    "Name" = var.igw_name_tag
  }

}

resource "aws_default_route_table" "my_vpc_default_rt" {
  default_route_table_id = aws_vpc.my_vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_Igw.id
  }
  tags = {
    "Name" = var.default_rt_name_tag
  }
}



resource "aws_subnet" "my_az" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone[0]
  tags = {
    "Name" = var.subnet_name_tag
  }
}

resource "aws_route_table_association" "my_public_subnet_association" {
  subnet_id      = aws_subnet.Blog_az.id
  route_table_id = aws_default_route_table.my_vpc_default_rt.id
}

resource "aws_default_security_group" "my_sec_group" {
  vpc_id = aws_vpc.my_vpc.id


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_grp_tag_name
  }
}
