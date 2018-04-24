variable "dhcp_options_domain_name_servers" {
  description = "Specify a list of DNS server addresses for DHCP options set, default to AWS provided"
  type        = "list"
  default     = ["AmazonProvidedDNS"]
}

variable "dhcp_options_domain_name" {
  description = "Specifies DNS name for DHCP options set"
  default     = ""
}

variable "dhcp_name" {
  description = "Specifies DNS name for DHCP options set"
  default     = ""
}

variable "azs" {
  description = "A list of availability zones in the region"
  default     = []
}

variable "vpc_id"
{
default =""
}


variable "r53_type"
{
default="A"
}


variable "r53_ttl"
{
default="300"
}


variable "db_private_ip"
{
default = "" 
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  default     = "0.0.0.0/0"
}


variable "vpc_tags"
{
default ="name"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  default     = false
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  default     = true
}
