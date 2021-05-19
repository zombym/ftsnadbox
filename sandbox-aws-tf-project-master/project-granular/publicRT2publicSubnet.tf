module "newPublicRT2publicSN" {
  source    = "../../sandbox-aws-tf-modules/tfgranular/routeTable2subnet"
  subnetID  = module.newPublicSubnet.subnet-id
  routeTableID = module.newPublicRT.routtable-id
}