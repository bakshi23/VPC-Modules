##########database  Server###############################
resource "aws_instance" "database" {
    ami = "${lookup(var.AmiLinux, var.region)}"
  instance_type = "var.instance_type"                
  key_name = "var.key_name"
  tags {
        Name = "var.instance_name"
		}
 user_data = "${file("mysql.sh")}"
}