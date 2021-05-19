variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "profile" {
  type    = string
  default = "sandbox"
}

variable "enviroment" {
  type    = string
  default = "dev"
}

variable "projectName" {
  type    = string
  default = "projectGranular"
}

variable "publicSubnetSIDR" {
  type    = string
  default = "10.0.1.0/24"
}

variable "privateSubnetSIDR" {
  type    = string
  default = "10.0.2.0/24"
}