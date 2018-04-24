#################Web Server##########################
resource "aws_instance" "webserver" {
  ami = "${lookup(var.AmiLinux, var.region)}"
  instance_type = "var.instance_type"
  key_name = "var.key_name"
  tags {
        Name = "var.instance_name"
  }
 connection {
            user = "ubuntu"
            private_key = "${file("path to private key file")}"
        }
  provisioner "file" {
        source = "path to private key file"
        destination = "destination for key file"
        
   }
   user_data = "${file("apache.sh")}"
}
######################################################################3

#########################################################
