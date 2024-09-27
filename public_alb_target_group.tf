resource "aws_lb_target_group" "public-subnet-web-load-balancer" {
  target_type = "instance"
  name        = "wordpress-alb"
  port        = 80
  protocol    = "HTTP"
#   ip_address_type = "ipv4"
  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 3
  }
  vpc_id      = aws_vpc.demo-app.id
}