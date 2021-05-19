module "newPublicRT" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/routeTable"
  enviroment = var.enviroment
  projectName = var.projectName
  igwID = module.newIGW.igw-id
  vpcID = module.newVPC.vpc-id
}