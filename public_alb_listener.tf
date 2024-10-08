resource "aws_lb_listener" "public-alb-listener" {
  load_balancer_arn = aws_lb.wordpress-alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.public-subnet-web-load-balancer.arn
  }
}
