# Resource Group Variables
variable "resource_group_name" {
  default = "SplunkTestLab"
}
variable "resource_group_location" {
  default = "eastus2"
}
# Network Variables
variable "virtual_network_name" {
  default = "splk-test-vnet"
}
# Subnet Variables
variable "virtual_subnet_name" {
  default = "splk-test-subnet"
}
