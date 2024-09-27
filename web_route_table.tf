resource "aws_route_table" "my-public-web-routetable-1" {
    vpc_id = aws_vpc.demo-app.id

    # route = []
    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.three-tier-web-ig.id
    }

    tags = {
      Name = "my-public-web-routetable-1"
    }
}

resource "aws_route_table" "my-private-app-routetable-1" {
    vpc_id = aws_vpc.demo-app.id

    # route = []
    route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.web-nat-gateway.id
    }

    tags = {
      Name = "my-private-app-routetable-1"
    }
}

resource "aws_route_table" "my-private-db-routetable-1" {
    vpc_id = aws_vpc.demo-app.id

    # route = []
    route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.web-nat-gateway.id
    }

    tags = {
      Name = "my-private-db-routetable-1"
    }
}