resource "aws_lb" "wordpress-alb" {
  name               = "wordpress-alb"
  internal           = false
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  security_groups    = [aws_security_group.public-alb-sg.id]
  subnets            = [aws_subnet.my-public-web-subnet-1.id,aws_subnet.my-public-web-subnet-2.id]
#   availability_zones = ["us-east-1a", "us-east-1b"]

#   listener {
#     instance_port     = 80
#     instance_protocol = "HTTP"
#     lb_port           = 80
#     lb_protocol       = "HTTP"
#   }

  enable_deletion_protection = false
}