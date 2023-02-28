resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-01.id
  }
}

resource "aws_route_table_association" "rta-01" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw-01.id
  }
}

resource "aws_route_table_association" "rta-02" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}