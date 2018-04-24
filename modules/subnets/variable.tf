variable "vpc_name" {
  description = "The CIDR block for the VPC. Default value is a valid "
  default     = "demo"
}

variable "vpc_id" {
  description = "The vpc id for the VPC. Default value is not valid"
  default     = ""
}

variable "public_1_cidr" {
  description = "The CIDR block for the public subnet. Default value is a valid"
  default     = "172.16.0.0/24"
}
variable "public_2_cidr" {
  description = "The CIDR block for the public subnet. Default value is a valid"
  default     = "172.16.1.0/24"
}

variable "avail_zone" {
  description = "Availability zone for the public subnet. Default value"
  default     = "ap-southeast-1"
}

variable "name" {
  description = "Availability zone for the public subnet. Default val"
  default     = "Public subnet"
}
variable "name_2" {
  description = "Availability zone for the public subnet. Default val"
  default     = "Public subnet_2"
}
variable "private_1_cidr" {
  description = "The CIDR block for the public subnet. Default value $"
  default     = "172.16.3.0/24"
}
variable "private_2_cidr" {
  description = "The CIDR block for the public subnet. Default value $"
  default     = "172.16.4.0/24"
}
variable "name_private_1" {
  description = "Availability zone for the public subnet. Default val"
  default     = "Private subnet_1"
}
variable "name_private_2" {
  description = "Availability zone for the public subnet. Default val"
  default     = "Private subnet_2"
}
