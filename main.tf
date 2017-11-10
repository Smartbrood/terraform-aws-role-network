module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = "${var.vpc_name}"
  cidr               = "${var.cidr}"
  azs                = ["${var.region}a", "${var.region}b", "${var.region}c"]
  public_subnets     = "${var.public_subnets}"
  enable_nat_gateway = "${var.enable_nat_gateway}"
  tags               = "${var.tags}"

  create_database_subnet_group = false
}
