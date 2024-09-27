resource "aws_security_group" "my-private-app-sg" {
  name        = "my-private-app-sg"
  description = "Allow ssh inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.demo-app.id

  ingress {
    description      = "Allow SSH from anywhere"
    from_port        = 22
    to_port          = 22
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
    Name = "my-private-app-sg"
  }
}


# resource "aws_security_group" "my-private-db-sg" {
#   name        = "my-private-db-sg"
#   description = "Allow ssh inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.demo-app.id

# #   ingress {
# #     description      = "Allow SSH from anywhere"
# #     from_port        = 3306
# #     to_port          = 3306
# #     protocol         = "tcp"
# #     cidr_blocks      = [aws_security_group.my-private-app-sg.id]  # "0.0.0.0/0" Allows SSH from any IP address (mention here app private subnet security group)
# #   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "my-private-db-sg"
#   }
# }

# resource "aws_security_group_rule" "allow_mysql_from_app_sg" {
#   description              = "Allow MySQL traffic from the application security group"
#   type                     = "ingress"
#   from_port                = 3306
#   to_port                  = 3306
#   protocol                 = "tcp"
#   security_group_id        = aws_security_group.my-private-db-sg.id  # Target security group (DB)
#   source_security_group_id = aws_security_group.my-private-app-sg.id # Source security group (App)
# }

resource "aws_security_group_rule" "my-private-app-sg-alg" {
  description              = "Allow ALB traffic from the application security group"
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = aws_security_group.my-private-app-sg.id  # Target security group (DB)
  source_security_group_id = aws_security_group.public-alb-sg.id # Source security group (App)
}