module "security_group_ssh" {
  source = "Smartbrood/security-group/aws"
  name        = "SSH"
  description = "SSH security group"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_rules_from_any = "${var.ingress_rules_from_any}"
  egress_rules_to_any    = "${var.egress_rules_to_any}"

  tags               = "${var.tags}"
}
