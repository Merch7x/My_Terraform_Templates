resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.availability_zone[0]
  tags = {
    "Name" = "${local.common-tags.Name}_public_subnet"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.availability_zone[0]
  tags = {
    "Name" = "${local.common-tags.Name}_private_subnet"
  }

}

resource "aws_subnet" "subnet_3" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_3_cidr
  availability_zone = var.availability_zone[1]
  tags = {
    "Name" = "${local.common-tags.Name}_public_subnet"
  }

}

resource "aws_subnet" "subnet_4" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_4_cidr
  availability_zone = var.availability_zone[1]
  tags = {
    "Name" = "${local.common-tags.Name}_private_subnet"
  }
}
