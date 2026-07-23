############################################################
# ROOT OUTPUTS
############################################################

############################################################
# Project
############################################################

output "project_name" {

  value = var.project_name

}

output "environment" {

  value = var.environment

}

output "region" {

  value = var.aws_region

}

############################################################
# VPC
############################################################

output "vpc_id" {

  value = module.vpc.vpc_id

}

output "public_subnet_ids" {

  value = module.vpc.public_subnet_ids

}

output "private_subnet_ids" {

  value = module.vpc.private_subnet_ids

}

output "nat_gateway_ip" {

  value = module.vpc.nat_public_ip

}

############################################################
# IAM OUTPUTS
############################################################

output "cluster_role_arn" {

  value = module.iam.cluster_role_arn

}

output "node_group_role_arn" {

  value = module.iam.node_group_role_arn

}

############################################################
# EKS OUTPUTS
############################################################

output "eks_cluster_name" {

  value = module.eks.cluster_name

}

output "eks_endpoint" {

  value = module.eks.cluster_endpoint

}

output "eks_node_group" {

  value = module.eks.node_group_name

}

#output "cloudwatch_log_group" {

#value = module.cloudwatch.log_group_name

#}

output "database_secret_arn" {

  value = module.secrets.secret_arn

}

#output "external_secrets_role" {

#value = module.iam.external_secrets_role_arn

#}
