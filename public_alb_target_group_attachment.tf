resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.public-subnet-web-load-balancer.arn
  target_id        = aws_instance.my-private-web-subnet[each.key].id
  port             = 80
  for_each = { for instance in local.ec2_name_dynamic : instance.name => instance }
  # for_each = { for idx, ec2 in var.ec2-name : idx => ec2 }

}