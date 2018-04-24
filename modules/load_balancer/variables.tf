variable "name" {
  description = "The name of the ELB"
  default = "demo load balancer"
  }


variable "security_groups" {
  description = "A list of security group IDs to assign to the ELB"
  type        = "list"
  default     = ["Public security group"]
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the ELB"
  type        = "list"
  default     = ["Public subnet"]
}

variable "cross_zone_load_balancing" {
  description = "Enable cross-zone load balancing"
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle"
  default     = 400
}

variable "connection_draining" {
  description = "Boolean to enable connection draining"
  default     = false
}

variable "connection_draining_timeout" {
  description = "The time in seconds to allow for connections to drain"
  default     = 300
}

variable "insta1"
{
description = "name of first instance"
  default     = ""
}

variable "insta2"
{
description = "name of first instance"
  default     = ""   
}

