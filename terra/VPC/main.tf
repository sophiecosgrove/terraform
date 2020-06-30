resource "aws_vpc" "VPC" {
  cidr_block           = var.vpc_cidr
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "publicsubnet" {
  cidr_block        = var.publicsubnet_cidr
  availability_zone = data.aws_availability_zones.available.names[1]
  vpc_id            = aws_vpc.VPC.id
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = "VPC Internet Gateway"
  }

}

resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }

  tags = {
    Name = "Route Table for VPC"
  }
}

resource "aws_route_table_association" "publicsubnet" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.vpc_rt.id
}