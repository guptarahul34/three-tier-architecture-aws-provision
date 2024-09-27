resource "aws_internet_gateway" "three-tier-web-ig" {
  vpc_id = aws_vpc.demo-app.id

  tags = {
    Name = "three-tier-web-ig"
  }
#   depends_on = [aws_vpc.demo-app]
}