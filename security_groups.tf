module "security_group_ssh" {
  source = "Smartbrood/security-group/aws"
  name        = "${var.security_group_name}"
  description = "created by terraform role-network module"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_rules_from_any = "${var.ingress_rules_from_any}"
  egress_rules_to_any    = "${var.egress_rules_to_any}"

  tags               = "${var.tags}"
}
