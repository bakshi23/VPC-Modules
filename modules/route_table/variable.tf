variable "Public_subnet_1_id"
{
description = "default value does not work"
default = "aws_subnet.default_subnet.id"
}

variable "Public_subnet_2_id"
{
description = "default value does not work"
default = "aws_subnet.default_subnet.id"
}

variable "Private_subnet_1_id"
{
description = "default value does not work"
default = "aws_subnet.default_subnet.id"
}

variable "Private_subnet_2_id"
{
description = "default value does not work"
default = "aws_subnet.default_subnet.id"
}


variable "vpc_Public_rt_1"
{
description = "default value does not work"
default ="aws_vpc.demo.Public_route_table_1_id"
}
variable "vpc_Public_rt_2"
{
description = "default value does not work"
default ="aws_vpc.demo.Public_route_table_2_id"
}
variable "vpc_Private_rt_1"
{
description = "default value does not work"
default ="aws_vpc.demo.Private_route_table_1_id"
}
variable "vpc_Private_rt_2"
{
description = "default value does not work"
default ="aws_vpc.demo.Private_route_table_2_id"
}
