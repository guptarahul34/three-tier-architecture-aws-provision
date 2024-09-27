resource "aws_route_table_association" "routetable-subnet-web-1" {
    subnet_id      = aws_subnet.my-public-web-subnet-1.id
    route_table_id = aws_route_table.my-public-web-routetable-1.id
}

resource "aws_route_table_association" "routetable-subnet-web-2" {
    subnet_id      = aws_subnet.my-public-web-subnet-2.id
    route_table_id = aws_route_table.my-public-web-routetable-1.id
}

resource "aws_route_table_association" "routetable-subnet-app-1" {
    subnet_id      = aws_subnet.my-private-app-subnet-1.id
    route_table_id = aws_route_table.my-private-app-routetable-1.id
}

resource "aws_route_table_association" "routetable-subnet-app-2" {
    subnet_id      = aws_subnet.my-private-app-subnet-2.id
    route_table_id = aws_route_table.my-private-app-routetable-1.id
}

resource "aws_route_table_association" "routetable-subnet-db-1" {
    subnet_id      = aws_subnet.my-private-db-subnet-1.id
    route_table_id = aws_route_table.my-private-db-routetable-1.id
}

resource "aws_route_table_association" "routetable-subnet-db-2" {
    subnet_id      = aws_subnet.my-private-db-subnet-2.id
    route_table_id = aws_route_table.my-private-db-routetable-1.id
}
