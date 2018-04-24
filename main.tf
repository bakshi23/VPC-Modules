provider "aws"{
  access_key="${var.aws_access_key}"
  secret_key="${var.aws_secret_key}"
  region    ="var.region"
}
module "vpc"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/vpc"
}
module "dns_dhcp"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/dns_dhcp"
}
module "internet"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/internet"
}
module "load_balancer"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/load_balancer"
}
module "subnets"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/subnets"
}
module "security-groups"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/security-groups"
}
module "Webserver_1"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/Webserver_1"
}
module "Webserver_2"
{ 
source ="C:/Users/Mohit/Desktop/VPC-Modules/modules/Websever_2"
}
module "database_server"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/database_server"
}
module "Rds"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/Rds"
}
module "route_table"
{ 
source ="C:/Users/MOHIT/Desktop/VPC-Modules/modules/route_table"
}