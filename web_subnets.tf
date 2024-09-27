resource "aws_subnet" "my-public-web-subnet-1" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.0/27"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my-public-web-subnet-1"
  }
}

resource "aws_subnet" "my-public-web-subnet-2" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.32/27"
  availability_zone = "us-east-1b"
  tags = {
    Name = "my-public-web-subnet-2"
  }
}

resource "aws_subnet" "my-private-app-subnet-1" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.64/27"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my-private-app-subnet-1"
  }
}

resource "aws_subnet" "my-private-app-subnet-2" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.96/27"
  availability_zone = "us-east-1b"
  tags = {
    Name = "my-private-app-subnet-2"
  }
}

resource "aws_subnet" "my-private-db-subnet-1" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.128/27"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my-private-db-subnet-1"
  }
}

resource "aws_subnet" "my-private-db-subnet-2" {
  vpc_id     = aws_vpc.demo-app.id
  cidr_block = "10.180.0.160/27"
  availability_zone = "us-east-1b"
  tags = {
    Name = "my-private-db-subnet-2"
  }
}

