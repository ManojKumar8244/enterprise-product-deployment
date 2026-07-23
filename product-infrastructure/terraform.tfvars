############################################################
# terraform.tfvars
############################################################

aws_region = "us-west-1"

project_name = "enterprise-devops"

environment = "dev"

cluster_name = "enterprise-eks"

vpc_cidr = "10.0.0.0/16"

public_subnet_1 = "10.0.1.0/24"

public_subnet_2 = "10.0.2.0/24"

private_subnet_1 = "10.0.3.0/24"

private_subnet_2 = "10.0.4.0/24"

kubernetes_version = "1.31"

db_username = "admin"

db_password = "StrongPassword@123"
