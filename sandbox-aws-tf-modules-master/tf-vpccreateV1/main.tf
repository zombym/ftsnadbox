resource "aws_vpc" "mainVPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.projectName}-VPC"
    project = var.projectName
    enviroment = var.enviroment
  }
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.mainVPC.id

  tags = {
    Name = "${var.projectName}-IGW"
    project = var.projectName
    enviroment = var.enviroment
  }
}

resource "aws_subnet" "publicSubnet" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = var.subnetSIDR
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.projectName}-publicSUBNET"
    project = var.projectName
    enviroment = var.enviroment
  }
}

resource "aws_route_table" "publicRouteTable" {
  vpc_id = aws_vpc.mainVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "${var.projectName}-PublicRT"
    project = var.projectName
    enviroment = var.enviroment
  }
}

resource "aws_route_table_association" "publicRouteTable2publicSubnet" {
  subnet_id      = aws_subnet.publicSubnet.id
  route_table_id = aws_route_table.publicRouteTable.id
}