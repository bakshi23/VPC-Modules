variable "region" {
  default = "ap-southeast-1"
}
variable "AmiLinux" {
  type = "map"
  default = {
    ap-southeast-1 = "ami-52d4802e"
  }
}
variable "instance_type"
{
description = "" 
default = "t2.micro"
}

variable "key_name"
{
description = "key name is for demo purpose" 
default = "your's key"
}

variable "instance_name"
{
description = "name of your instance" 
default = "database"
}