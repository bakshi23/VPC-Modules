output "id" {
  description = "List of IDs of instances"
  value       = ["${aws_instance.webserver.*.id}"]
}
output "tags" {
  description = "tag"
  value       = ["${aws_instance.webserver.*.tags}"]
}
output "security_group" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.webserver.*.security_group}"]
}

output "vpc_security_group_ids" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.webserver.*.vpc_security_group_ids}"]
}
output "key_name" {
  description = "List of key names of instances"
  value       = ["${aws_instance.webserver.*.key_name}"]
}

output "public_dns_name" {
  description = "public domain assigned to the isntance"
  value       = ["${aws_instance.webserver.*.public_dns_name}"]
}

output "public_ip_address" {
  description = "public IP assigned to the instance"
  value       = ["${aws_instance.webserver.*.public_ip_address}"]
}

output "private_dns_name" {
  description = "private DNS names assigned to the instance"
  value       = ["${aws_instance.webserver.*.private_dns}"]
}
output "availability_zone" {
  description = "List of availability zones of instances"
  value       = ["${aws_instance.webserver.*.availability_zone}"]
}

output "private_ip-address" {
  description = "private IP addresses assigned to the instance"
  value       = ["${aws_instance.webserver.*.private_ip}"]
}
output "subnet_id" {
  description = "VPC subnets assigned to instances"
  value       = ["${aws_instance.webserver.*.subnet_id}"]
}

