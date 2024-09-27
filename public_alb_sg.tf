resource "aws_security_group" "public-alb-sg" {
  name        = "public-alb-sg"
  description = "Allow ssh inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.demo-app.id

  ingress {
    description      = "Allow HTTP from alb"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Allows SSH from any IP address
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public-alb-sg"
  }
}
