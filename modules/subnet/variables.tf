//
// Variables for the Subnet module
//

variable "vpc_id" {
  type = string
}

variable "azs" {
  type = list(string)
}

variable "cidr_block" {
  type = list(string)
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}

