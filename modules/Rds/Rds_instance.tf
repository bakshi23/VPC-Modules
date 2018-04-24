module "vpc"{
source = "C:/Users/MOHIT/Desktop/VPC-Modules/modules/vpc"
}

resource "aws_db_instance" "mydb1" {
  allocated_storage        = 20 # gigabytes
  backup_retention_period  = 7   # in days
  db_subnet_group_name     = "module.rds_subnet.rds_subnet_group"
  parameter_group_name     = "module.rds_db.rds_parameter_group"
  engine                   = "mysql"
  engine_version           = "5.6.39"
  identifier               = "mydb1"
  instance_class           = "db.t2.large"
  multi_az                 = false
  name                     = "mysqldatabase"
  port                     = 3306
  publicly_accessible      = false
  storage_encrypted        = false # you should always do this
  storage_type             = "gp2"
  username                 = "user id"
  password	               = "password"
  vpc_security_group_ids   = ["module.rds.rds_security_group"]
 }
