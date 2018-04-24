variable "vpc_id" {
  default = "default value"
}

variable "ig_name" {
  default = "gw"
}

variable "eip_id"
{
description = "default value will not work"
default = ""
}


variable "art_name"
{
default = ""
}


variable "acl_tag"
{
default = ""
}



variable "subnet_id_pub1"
{
default = ""
}


variable "subnet_id_pub2"
{
default = ""
}


variable "acl_cidr_block_ingress"
{
default = "0.0.0.0/0"
}

variable "acl_cidr_block_egress"
{
default = "0.0.0.0/0"
}

variable "rt_cidr"
{
default = "0.0.0.0/0"
}




variable "des_cidr_block"
{
default = "0.0.0.0/0"
}

variable "priv_route_table"
{
default = ""
}


variable "aws_nat_id"
{
default = ""
}



