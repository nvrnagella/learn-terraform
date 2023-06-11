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


variable "name" {}
variable "instance_type" {}


#output "publicip" {
#  value = {
#    for k, v in aws_instance.web : k=> v.public_ip
#  }
#}