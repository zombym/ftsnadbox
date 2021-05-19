terraform {
  backend "s3" {  }
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region    = var.region
  profile   = var.profile
}

module "newVPC" {
  source    = "../../sandbox-aws-tf-modules/tf-vpccreateV1"
  enviroment = var.enviroment
  projectName = var.projectName
  subnetSIDR = var.subnetSIDR
}