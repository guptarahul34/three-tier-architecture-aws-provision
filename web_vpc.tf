resource "aws_vpc" "demo-app" {
  cidr_block       = "10.180.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "three-tier-app"
  }
}
