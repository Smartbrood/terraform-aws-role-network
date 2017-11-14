module "vpn" {
  source      = "Smartbrood/vpn/aws"
  vpn_enabled = "${var.vpn_enabled}"
  vpc_id      = "${module.vpc.vpc_id}"
  cgw_ip_1    = "${var.cgw_ip_1}"
  cgw_ip_2    = "${var.cgw_ip_2}"
  bgp_asn     = "${var.bgp_asn}"
  tags        = "${var.tags}"
}
