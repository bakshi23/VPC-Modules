output "id" {
  description = "List of IDs of instances"
  value       = ["${aws_instance.database.*.id}"]
}
output "tags" {
  description = "tag"
  value       = ["${aws_instance.database.*.tags}"]
}
output "security_group" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.database.*.security_group}"]
}

output "vpc_security_group_ids" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.database.*.vpc_security_group_ids}"]
}
output "key_name" {
  description = "List of key names of instances"
  value       = ["${aws_instance.database.*.key_name}"]
}

output "private_dns_name" {
  description = "private DNS names assigned to the instance"
  value       = ["${aws_instance.database.*.private_dns}"]
}
output "availability_zone" {
  description = "List of availability zones of instances"
  value       = ["${aws_instance.database.*.availability_zone}"]
}

output "private_ip-address" {
  description = "private IP addresses assigned to the instance"
  value       = ["${aws_instance.database.*.private_ip}"]
}
output "subnet_id" {
  description = "VPC subnets assigned to instances"
  value       = ["${aws_instance.database.*.subnet_id}"]
}

