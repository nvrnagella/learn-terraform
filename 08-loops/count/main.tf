resource "aws_instance" "web" {
  count = 2
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  tags = {
    Name = "test-centos8"
  }
}
data "aws_ami" "centos8" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}