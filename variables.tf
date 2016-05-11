variable "name" { }
variable "cidr" { }
variable "public_subnets" { default = "" }
variable "private_subnets" { default = "" }
variable "azs" { }
variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}
variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}

// Since Terraform doesn't yet support conditional logic, adding count = 0 to a
// resource will disable it, anything else will enable the resource
variable "nat_gateways_count" {
  description = "defaults to 0, set to 1 to enable NAT gateway for private subnets"
  default = 0
}
