module "security_group" {
  source = "Smartbrood/security-group/aws"
  name        = "${var.security_group_name}"
  description = "created by terraform role-network module"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_rules_from_any = "${var.ingress_rules_from_any}"
  egress_rules_to_any    = "${var.egress_rules_to_any}"

  ingress_rules          = "${var.ingress_rules}"
  ingress_cidr_blocks    = "${var.ingress_cidr_blocks}"

  egress_rules           = "${var.egress_rules}"
  egress_cidr_blocks     = "${var.egress_cidr_blocks}"

  tags               = "${var.tags}"
}
