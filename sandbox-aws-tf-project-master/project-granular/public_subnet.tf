module "newPublicSubnet" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/subnet"
  enviroment = var.enviroment
  projectName = var.projectName
  vpcID = module.newVPC.vpc-id
  publicIP = "true"
  subnetName = "public"
  SubnetSIDR = var.publicSubnetSIDR
}