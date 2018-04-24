output "rds_security_group" {
  value = "${aws_security_group.rds.id}"
  }
output "rds_subnet_group" {
  value = ["${aws_db_subnet_group.rds_subnet.name}"]
  }
output "rds_parameter_group" {
 value = "${aws_db_parameter_group.rds_db.name}"
  }
