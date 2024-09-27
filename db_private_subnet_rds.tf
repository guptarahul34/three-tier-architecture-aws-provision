# resource "aws_db_instance" "rds_db" {
#   allocated_storage    = 20
#   engine               = "postgres"
#   engine_version       = "15.4"
#   instance_class       = "db.t4g.micro"
# #   db_name              = "wordpress-db"
#   username             = "wordpressuser"
#   password             = "Admin$123"
#   multi_az             = false
#   identifier           = "mydb"
#   storage_type         = "gp3"
#   db_subnet_group_name = aws_db_subnet_group.db-private-subnet.id
#   vpc_security_group_ids = [aws_security_group.my-private-db-sg.id]
#   backup_retention_period = 0
#   availability_zone       = "us-east-1a"
#   #   parameter_group_name = "default.mysql8.0"
#   skip_final_snapshot  = true
#   tags = {
#     Name = "rds_db"
#   }
# }