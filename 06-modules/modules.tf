module "sg" {
  source = "./sg"
}
module "ec2" {
  source = "./ec2"
  security_group_id = module.sg.security_group_id
}
provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "terraform-b70"
    key    = "05-remote-state/sample.tf"
    region = "us-east-1"
  }
}