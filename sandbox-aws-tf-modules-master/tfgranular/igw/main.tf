resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpcID

  tags = {
    Name = "${var.projectName}-IGW"
    project = var.projectName
    enviroment = var.enviroment
  }
}