output "public_subnets" {
  description = "List of public subnets"
  value       = "${module.vpc.public_subnets}"
}

output "security_group_id" {
  description = "SSH security group id"
  value       = "${module.security_group.security_group_id}"
}

output "primary_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway"
  value = "${module.vpn.primary_gateway_configuration}"
}

output "secondary_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway"
  value = "${module.vpn.secondary_gateway_configuration}"
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc.vpc_id}"
}

