resource "aws_security_group" "rds" {
  name = "rds"

  description = "Mysql Server  created for demo"
  vpc_id = "${module.vpc.demo}"

  # Only mysql port allowed
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic.
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
