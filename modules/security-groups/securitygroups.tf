resource "aws_security_group" "webserver" {
  name = "${var.webserver_sg}"
  description = "ONLY HTTP CONNECTION INBOUD"
  vpc_id = "${var.vpc_id}"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "Database" {
  name = "${var.database_sg}"
  description = "ONLY tcp CONNECTION INBOUND"
  vpc_id = "${var.vpc_id}"
  ingress {
      from_port = 3306
      to_port = 3306
      protocol = "TCP"
      }
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "TCP"
        cidr_blocks = ["172.28.0.0/16"]
  }
  ingress {
      from_port   = "22"
      to_port     = "22"
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
