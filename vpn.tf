module "vpn" {
  source      = "Smartbrood/vpn/aws"
  vpn_enabled = "${var.vpn_enabled}"
  vpc_id      = "${module.vpc.vpc_id}"
  cgw_ip      = "${var.cgw_ip}"
  bgp_asn     = "${var.bgp_asn}"
  tags        = "${var.tags}"
}
