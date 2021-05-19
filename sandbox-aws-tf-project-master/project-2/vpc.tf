module "newVPC" {
  source    = "../../sandbox-aws-tf-modules/tf-vpccreateV2"
  enviroment = var.enviroment
  projectName = var.projectName
  publicSubnetSIDR = var.publicSubnetSIDR
  privateSubnetSIDR = var.privateSubnetSIDR
}