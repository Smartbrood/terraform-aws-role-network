terraform-aws-role-network
==========================

Terraform module/role (role means that module contains other modules) to create network related resources.


Usage
-----

```hcl
module "network" {
    source         = "Smartbrood/role-network/aws"
    region         = "us-east-1"
    vpc_name       = "stage"
    cidr           = "10.0.0.0/16"
    public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    enable_nat_gateway = "false"

    vpn_enabled    = "true"
    cgw_ip         = "1.1.1.1"
    bgp_asn        = "6500"

    tags = {
        Terraform   = "true"
        Environment = "stage"
        Project     = "my_project"
    }
}

output "public_subnets" {
  value       = "${module.network.public_subnets}"
}

output "security_group_ssh_id" {
  value       = "${module.network.security_group_ssh_id}"
}

output "customer_gateway_configuration" {
  value = "${module.network.customer_gateway_configuration}"
}

```


Authors
-------

Module managed by [Smartbrood LLC](https://github.com/Smartbrood).


License
-------

Apache 2 Licensed. See LICENSE for full details.
