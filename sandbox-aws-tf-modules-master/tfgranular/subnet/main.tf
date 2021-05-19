resource "aws_subnet" "Subnet" {
  vpc_id     = var.vpcID
  cidr_block = var.SubnetSIDR
  map_public_ip_on_launch = var.publicIP

  tags = {
    Name = "${var.projectName}-${var.subnetName}SUBNET"
    project = var.projectName
    enviroment = var.enviroment
  }
}