output "id" {
  description = "List of IDs of instances"
  value       = ["${aws_instance.webserver_Backup.*.id}"]
}
output "tags" {
  description = "tag"
  value       = ["${aws_instance.webserver_Backup.*.tags}"]
}
output "security_group" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.webserver_Backup.*.security_group}"]
}

output "vpc_security_group_ids" {
  description = "security groups assigned to instance"
  value       = ["${aws_instance.webserver_Backup.*.vpc_security_group_ids}"]
}
output "key_name" {
  description = "List of key names of instances"
  value       = ["${aws_instance.webserver_Backup.*.key_name}"]
}

output "public_dns_name" {
  description = "public domain assigned to the isntance"
  value       = ["${aws_instance.webserver_Backup.*.public_dns_name}"]
}

output "public_ip_address" {
  description = "public IP assigned to the instance"
  value       = ["${aws_instance.webserver_Backup.*.public_ip_address}"]
}

output "private_dns_name" {
  description = "private DNS names assigned to the instance"
  value       = ["${aws_instance.webserver_Backup.*.private_dns}"]
}
output "availability_zone" {
  description = "List of availability zones of instances"
  value       = ["${aws_instance.webserver_Backup.*.availability_zone}"]
}

output "private_ip-address" {
  description = "private IP addresses assigned to the instance"
  value       = ["${aws_instance.webserver_Backup.*.private_ip}"]
}
output "subnet_id" {
  description = "VPC subnets assigned to instances"
  value       = ["${aws_instance.webserver_Backup.*.subnet_id}"]
}

