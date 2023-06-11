resource "aws_instance" "web" {
  ami = data.aws_ami.centos8.id
  instance_type = var.instance_type
  tags = {
    Name = var.name
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
}

variable "components" {
  default = {
    cart = {
      name = "cart",
      instance_type = "t3.small"
    }
    catalogue = {
      name = "catalogue",
      instance_type = "t3.micro"
    }
  }
}
variable "name" {}
variable "instance_type" {}

module "ec2" {
  source = "./module"
  for_each = var.components
  instance_type = each.value.instance_type
  name = each.value.name

}
#i want to print all the output of a module after module itself
output "publicip" {
  value = module.ec2
}
#output "publicip" {
#  value = {
#    for k, v in aws_instance.web : k=> v.public_ip
#  }
#}