variable "region" {
  description = "AWS region"
}

variable "vpc_name" {
  description = "Name for VPC"
}

variable "ingress_rules_from_any" {
  type = "list"
  description = "List of open ingress ports"
  default     = ["ssh-22-tcp"]
}

variable "egress_rules_to_any" {
  type = "list"
  description = "List of open egress ports"
  default     = ["any"]
}

variable "tags" {
  type = "map"
  description = "Map with tags"
}

variable "cidr" { 
  description = "VPC CIDR"
}

variable "public_subnets" {
  type = "list"
  description = "List with public subnets. Module creates one subnet in three availability zones, so list length should be = 3"
}

variable "enable_nat_gateway" { 
  default = "false"
  description = "Enable nat gateway"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = false
}

variable "enable_dns_support" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = false
}

variable "vpn_enabled" {
  description = "For ability to enable/disable VPN creation"
  default     = "false"
}

variable "cgw_ip" { 
  default = "false"
  description = "Customer VPN gateway IP"
}

variable "bgp_asn" { 
  default = "6500"
  description = "BGP ASN for VPN"
}
