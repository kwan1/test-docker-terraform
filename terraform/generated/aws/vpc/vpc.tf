resource "aws_vpc" "tfer--vpc-034847b011923fae4" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.3.0.0/16"
  enable_classiclink                   = "false"
  enable_classiclink_dns_support       = "false"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Domain                                           = "corpgovrisk.net"
    Name                                             = "clients"
    Ou                                               = "clients"
    Provider                                         = "aws"
    Region                                           = "ap-southeast-2"
    "cgr:environment"                                = "development"
    "cgr:terraform"                                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P" = "shared"
  }

  tags_all = {
    Domain                                           = "corpgovrisk.net"
    Name                                             = "clients"
    Ou                                               = "clients"
    Provider                                         = "aws"
    Region                                           = "ap-southeast-2"
    "cgr:environment"                                = "development"
    "cgr:terraform"                                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P" = "shared"
  }
}

resource "aws_vpc" "tfer--vpc-baf988dd" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_classiclink                   = "false"
  enable_classiclink_dns_support       = "false"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
}
