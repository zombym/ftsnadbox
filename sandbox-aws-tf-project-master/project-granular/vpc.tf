module "newVPC" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/vpc"
  enviroment = var.enviroment
  projectName = var.projectName
}