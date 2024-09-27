resource "aws_nat_gateway" "web-nat-gateway" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.my-public-web-subnet-1.id

  tags = {
    Name = "web-nat-gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.three-tier-web-ig]
}