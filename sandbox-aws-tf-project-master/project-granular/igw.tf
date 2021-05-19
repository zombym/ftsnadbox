module "newIGW" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/igw"
  enviroment = var.enviroment
  projectName = var.projectName
  vpcID = module.newVPC.vpc-id
}