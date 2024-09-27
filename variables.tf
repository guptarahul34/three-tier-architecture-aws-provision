# variable "ec2-name" {
#     type = list(object({
#         name = string
#         az_name = string
#         subnet_name = string
#     }))
#     default = [{"name": "app-1", "az_name": "us-east-1a", "subnet_name": aws_subnet.my-public-web-subnet-1.id}, {"name": "app-2", "az_name": "us-east-1b", "subnet_name": aws_subnet.my-public-web-subnet-2.id} ]
# }

locals {
  ec2_name_dynamic = [
    {
      name        = "app-1",
      az_name     = "us-east-1a",
      subnet_name = aws_subnet.my-private-app-subnet-1.id
    },
    {
      name        = "app-2",
      az_name     = "us-east-1b",
      subnet_name = aws_subnet.my-private-app-subnet-2.id
    }
  ]
}
