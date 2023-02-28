data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public" {
  cidr_block = var.subnet_public_cidr_block
  vpc_id     = aws_vpc.main.id
  availability_zone = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "private" {
  cidr_block = var.subnet_private_cidr_block
  vpc_id     = aws_vpc.main.id
  availability_zone = element(data.aws_availability_zones.available.names, 1)

  tags = {
    Name = "Private Subnet"
  }
}