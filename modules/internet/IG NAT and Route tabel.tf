# Declare the data source
data "aws_availability_zones" "available" {}

/* EXTERNAL NETWORG , IG, ROUTE TABLE */
resource "aws_internet_gateway" "gw" {
   vpc_id = "${var.vpc_id}"
    tags {
        Name = "var.ig_name"
    }
}
resource "aws_network_acl" "all" {
   vpc_id = "${var.vpc_id}"
    egress {
        protocol = "-1"
        rule_no = 2
        action = "allow"
        cidr_block =  "acl_cidr_block_egress"
        from_port = 0
        to_port = 0
    }
    ingress {
        protocol = "-1"
        rule_no = 1
        action = "allow"
        cidr_block =  "acl_cidr_block_ingress"
        from_port = 0
        to_port = 0
    }
    tags {
        Name = "var.acl_tag"
    }
}
resource "aws_route_table" "public" {
  vpc_id = "${var.vpc_id}"
  tags {
      Name = "var.art_name"
  }
  route {
        cidr_block = "var.rt_cidr"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }
}
resource "aws_route_table" "private" {
  vpc_id = "${var.vpc_id}"
  tags {
      Name = "Private"
  }
  route {
        cidr_block = "var.rt_cidr"
        nat_gateway_id = "${var.aws_nat_id}"
  }
}
resource "aws_eip" "forNat" {
    vpc      = true
}
resource "aws_nat_gateway" "PublicAZA" {
    allocation_id = "${var.aws_nat_id}"
    subnet_id = "${var.subnet_id_pub1}"
    subnet_id = "${var.subnet_id_pub2}"
    depends_on = ["aws_internet_gateway.gw"]
}
