############################################################
# main.tf
############################################################

############################################################
# VPC MODULE
############################################################

module "vpc" {

  source = "./vpc"

  project_name = var.project_name
  environment  = var.environment
  cluster_name = var.cluster_name

  vpc_cidr = var.vpc_cidr

  public_subnet_1 = var.public_subnet_1
  public_subnet_2 = var.public_subnet_2

  private_subnet_1 = var.private_subnet_1
  private_subnet_2 = var.private_subnet_2

}

############################################################
# IAM MODULE
############################################################

module "iam" {

  source = "./iam"

  project_name = var.project_name

  environment = var.environment

}

############################################################
# EKS MODULE
############################################################

module "eks" {

  source = "./eks"

  project_name = var.project_name

  environment = var.environment

  cluster_name = var.cluster_name

  kubernetes_version = var.kubernetes_version

  vpc_id = module.vpc.vpc_id

  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_role_arn = module.iam.cluster_role_arn

  node_group_role_arn = module.iam.node_group_role_arn

}

############################################################
# CloudWatch Module
############################################################

#module "cloudwatch" {

  #source = "./cloudwatch"

  #project_name = var.project_name

  #environment = var.environment

  #cluster_name = var.cluster_name

  #}

############################################################
# Secrets Module
############################################################

module "secrets" {

  source = "./secrets"

  project_name = var.project_name

  environment = var.environment

  db_username = var.db_username

  db_password = var.db_password

}
