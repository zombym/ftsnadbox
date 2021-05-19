terraform {
  backend "s3" {  }
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region    = var.region
  profile   = var.profile
}