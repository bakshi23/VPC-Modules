########################Db_Subnet_group#####################
resource "aws_db_subnet_group" "rds_subnet" {
  name       = "rds-subnet-grp"
  subnet_ids = [
    "172.16.4.0/24",
    "172.16.5.0/24",
  ]
  tags = {
    Name              = "staging.demo.abc"
    Environment       = "staging"
  }
}
resource "aws_db_parameter_group" "rds_db" {
  name   = "database"
  family = "mysql5.6"
}
#################################
