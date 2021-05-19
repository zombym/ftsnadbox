resource "aws_vpc" "mainVPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.projectName}-VPC"
    project = var.projectName
    enviroment = var.enviroment
  }
}