variable "vpc_id"{
  default = ""
  description = "to used by all resource as indentifier"
}
variable "ingress_cidr_blocks" {
  description = "List of IPv4 CIDR ranges to use on all ingress rules"
  default     = []
}

variable "egress_cidr_blocks" {
  description = "List of IPv4 CIDR ranges to use on all egress rules"
  default     = []
}
variable "webserver_sg"
{
  description = "Name to be used on all the resources as identifier"
  default     = "webserver"
}
variable "database_sg"
{
  description = "Name to be used on all the resources as identifier"
  default     = "database"
}