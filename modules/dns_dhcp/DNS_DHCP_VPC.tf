resource "aws_vpc_dhcp_options" "mydhcp" {
    domain_name = "${var.azs}"
    domain_name_servers = ["var.dhcp_options_domain_name_servers"]
    tags {
      Name = "var.dhcp_name"
    }
}

resource "aws_vpc_dhcp_options_association" "dns_resolver" {
    vpc_id = "${var.vpc_id}"
    dhcp_options_id = "${aws_vpc_dhcp_options.mydhcp.id}"
}

resource "aws_route53_zone" "main" {
  name = "${var.azs}"
  vpc_id = "${var.vpc_id}"
  comment = "Created for Demo"
}

resource "aws_route53_record" "database" {
   zone_id = "${aws_route53_zone.main.zone_id}"
   name = "mydatabase.${var.azs}"
   type = "var.r53_type"
   ttl = "var.r53_ttl"
   records = ["${var.db_private_ip}"]
}

resource "aws_vpc" "demo" {
    cidr_block = "${var.cidr}"
    enable_dns_support = "var.enable_dns_hostnames"
    enable_dns_hostnames = "var.enable_dns_support"
    tags {
      Name = "var.vpc_tags"
    }
}
