resource "aws_instance" "web" {
  count = length(var.components)
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  tags = {
    Name = var.components
  }
}
data "aws_ami" "centos8" {

  owners = []
}