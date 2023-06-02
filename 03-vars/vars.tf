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
