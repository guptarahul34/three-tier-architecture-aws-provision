# resource "aws_db_subnet_group" "db-private-subnet" {
#   name       = "db-private-subnet"
#   description = "This is for creating DB Instance in private subnet."
#   subnet_ids = [aws_subnet.my-private-db-subnet-1.id,aws_subnet.my-private-db-subnet-2.id]

#   tags = {
#     Name = "db-private-subnet"
#   }
# }