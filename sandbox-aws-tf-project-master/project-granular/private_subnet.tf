module "newPrivateSubnet" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/subnet"
  enviroment = var.enviroment
  projectName = var.projectName
  vpcID = module.newVPC.vpc-id
  publicIP = "false"
  subnetName = "private"
  SubnetSIDR = var.privateSubnetSIDR
}