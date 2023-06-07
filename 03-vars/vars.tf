#default variable type
variable "sample" {
  default = 10
}
output "sample" {
  value = var.sample
}
#list variable type
variable "sample1" {
  default = [
  100,"abc","xyz"
  ]
}
output "sample1" {
  value = var.sample1[1]
}
#map variable type
variable "sample2" {
  default = {
    number = 100
    string = "xyz"
    boolean = false
  }
}
output "sample2" {
  value = var.sample2["number"]
}
#variables from tfvars
variable "demo1" {}
output "demo1" {
  value = var.demo1
}
#variables from shell env variables
variable "demo2" {
  default =  null
}
output "demo2" {
  value = var.demo2
}
