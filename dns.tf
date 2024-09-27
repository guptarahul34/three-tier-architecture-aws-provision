resource "local_file" "alb_dns" {
  content  = aws_lb.wordpress-alb.dns_name
  filename = "/home/rahul/Desktop/terraform/v3_project2/dns.txt"
}