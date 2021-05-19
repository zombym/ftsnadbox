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
  default = "project-1"
}

variable "subnetSIDR" {
  type    = string
  default = "10.0.1.0/24"
}