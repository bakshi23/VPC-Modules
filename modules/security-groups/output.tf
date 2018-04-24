output "webserver_sg_id"
{
 value = "${aws_security_group.webserver.id}"
}
output "database_sg_id"
{
 value = "${aws_security_group.Database.id}"
}
output "webserver_security_group_id" {
  description = "The ID of the security group"
  value       = "${element(concat(aws_security_group.webserver.*.id, list("")), 0)}"
}

output "webserver_security_group_owner_id" {
  description = "The owner ID"
  value       = "${element(concat(aws_security_group.webserver.*.owner_id, list("")), 0)}"
}

output "webserver_security_group_name" {
  description = "The name of the security group"
  value       = "${element(concat(aws_security_group.webserver.*.name, list("")), 0)}"
}

output "webserver_security_group_description" {
  description = "The description of the security group"
  value       = "${element(concat(aws_security_group.webserver.*.description, list("")), 0)}"
}
output "database_security_group_id" {
  description = "The ID of the security group"
  value       = "${element(concat(aws_security_group.Database.*.id, list("")), 0)}"
}

output "database_security_group_owner_id" {
  description = "The owner ID"
  value       = "${element(concat(aws_security_group.Database.*.owner_id, list("")), 0)}"
}

output "database_security_group_name" {
  description = "The name of the security group"
  value       = "${element(concat(aws_security_group.Database.*.name, list("")), 0)}"
}

output "database_security_group_description" {
  description = "The description of the security group"
  value       = "${element(concat(aws_security_group.Database.*.description, list("")), 0)}"
}



#output "asg_webserver" {
#  value = "${aws_security_group.webserver.id}"
#  }
# output "asg_database" {
#    value = "${aws_security_group.Database.id}"
#    }
  