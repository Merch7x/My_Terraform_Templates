#resources defined at the vpc level

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${local.common-tags.Name}-VPC"
    Env  = local.common-tags.Env
  }
}

#vpc level resource does not need a subnet definition
resource "aws_internet_gateway" "my_Igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "${aws_vpc.my_vpc.tags.Name}-IGW"
    ENV  = local.common-tags.Env
  }

}

#creates an elastic ip to be used by the NAT gateway
resource "aws_eip" "nat_1_eip" {
  tags = {
    Name = "${local.common-tags.Name}-EIP_1"
  }

  depends_on = [aws_internet_gateway.my_Igw]
}

resource "aws_eip" "nat_2_eip" {
  tags = {
    Name = "${local.common-tags.Name}-EIP_2"
  }

  depends_on = [aws_internet_gateway.my_Igw]
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_Igw.id
  }
  tags = {
    Name = "${local.common-tags.Name}-public-rt"
    ENV  = local.common-tags.Env
  }
}

#subnet-level resource, created in either a public or private subnet
resource "aws_nat_gateway" "nat_gateway_1" {
  connectivity_type = "public"
  subnet_id         = aws_subnet.subnet_1.id
  allocation_id     = aws_eip.nat_1_eip.id

  tags = {
    Name = "${local.common-tags.Name}-NAT-1"
    ENV  = local.common-tags.Env
  }

  depends_on = [aws_internet_gateway.my_Igw]

}

resource "aws_nat_gateway" "nat_gateway_2" {
  connectivity_type = "public"
  subnet_id         = aws_subnet.subnet_3.id
  allocation_id     = aws_eip.nat_2_eip.id

  tags = {
    Name = "${local.common-tags.Name}-NAT-2"
    ENV  = local.common-tags.Env
  }

  depends_on = [aws_internet_gateway.my_Igw]

}


resource "aws_route_table" "private_route_table_a" {
  vpc_id = aws_vpc.my_vpc.id

  # Route for traffic that needs to go to the internet (via NAT Gateway)
  route {
    cidr_block     = "0.0.0.0/0" # Route for all outbound traffic to the internet
    nat_gateway_id = aws_nat_gateway.nat_gateway_1.id
  }

  tags = {
    Name = "${local.common-tags.Name}-private-rt-a"
    ENV  = local.common-tags.Env
  }
}

resource "aws_route_table" "private_route_table_b" {
  vpc_id = aws_vpc.my_vpc.id

  # Route for traffic that needs to go to the internet (via NAT Gateway)
  route {
    cidr_block     = "0.0.0.0/0" # Route for all outbound traffic to the internet
    nat_gateway_id = aws_nat_gateway.nat_gateway_2.id
  }

  tags = {
    Name = "${local.common-tags.Name}-private-rt-b"
    ENV  = local.common-tags.Env
  }
}



