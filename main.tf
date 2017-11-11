module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = "${var.vpc_name}"
  cidr               = "${var.cidr}"
  azs                = ["${var.region}a", "${var.region}b", "${var.region}c"]
  public_subnets     = "${var.public_subnets}"
  enable_nat_gateway = "${var.enable_nat_gateway}"

  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support   = "${var.enable_dns_support}"

  tags               = "${var.tags}"

  create_database_subnet_group = false
}
