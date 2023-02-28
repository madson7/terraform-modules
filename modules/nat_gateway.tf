resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "ngw-01" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public.id

  tags = {
    Name = "Nat Gateway"
  }
}
