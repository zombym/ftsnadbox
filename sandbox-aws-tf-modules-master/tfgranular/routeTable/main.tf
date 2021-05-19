resource "aws_route_table" "RouteTable" {
  vpc_id = var.vpcID

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igwID
  }

  tags = {
    Name = "${var.projectName}-PublicRT"
    project = var.projectName
    enviroment = var.enviroment
  }
}