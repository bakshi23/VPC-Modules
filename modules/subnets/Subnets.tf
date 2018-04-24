###################Public Subnet 1#########################
resource "aws_subnet" "PublicAZA" {
  vpc_id = "var.vpc_id"
  cidr_block = "var.public_1_cidr"
  map_public_ip_on_launch = true
  tags {
        Name = "var.name"
  }
 availability_zone = "var.avail_zone"
}
############################################
############Public Subnet 2#################
resource "aws_subnet" "PublicAZA2" {
  vpc_id = "var.vpc_id"
  cidr_block = "var.public_2_cidr"
  tags {
        Name = "var.name_2"
  }
 availability_zone = "var.avail_zone"
}
##################################################
###############Private Subnet 1#######################
resource "aws_subnet" "PrivateAZA" {
  vpc_id = "var.vpc_id"
  cidr_block = "var.private_1_cidr"
  tags {
        Name = "var.name_private_1"
  }
  availability_zone = "var.avail_zone"
}

##################################################
#################Private Subnet 2##################
resource "aws_subnet" "PrivateAZA2" {
  vpc_id = "var.vpc_id"
  cidr_block = "var.private_2_cidr"
  tags {
        Name = "var.name_private_2"
  }
  availability_zone = "var.avail_zone"
}


##############################################
