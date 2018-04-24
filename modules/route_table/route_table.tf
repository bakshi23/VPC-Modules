#####################################################
resource "aws_route_table_association" "PublicAZA" {
    subnet_id = "${var.Public_subnet_1_id}"
    route_table_id = "${var.vpc_Public_rt_1}"
}
###################################################

resource "aws_route_table_association" "PublicAZA2" {
    subnet_id = "${var.Public_subnet_2_id}"
    route_table_id = "${var.vpc_Public_rt_2}"
}
#######################################################

resource "aws_route_table_association" "PrivateAZA" {
    subnet_id = "${var.Private_subnet_1_id}"
    route_table_id = "${var.vpc_Private_rt_1}"
}
###################################################
resource "aws_route_table_association" "PrivateAZA2" {
    subnet_id = "${var.Private_subnet_2_id}"
    route_table_id = "${var.vpc_Private_rt_2}"
}


