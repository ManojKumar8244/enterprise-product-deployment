############################################################
# EKS MODULE VARIABLES
############################################################

############################################################
# Project Name
############################################################

variable "project_name" {

  description = "Project Name"

  type = string

}

############################################################
# Environment
############################################################

variable "environment" {

  description = "Environment"

  type = string

}

############################################################
# Cluster Name
############################################################

variable "cluster_name" {

  description = "EKS Cluster Name"

  type = string

}

############################################################
# Kubernetes Version
############################################################

variable "kubernetes_version" {

  description = "Kubernetes Version"

  type = string

  default = "1.30"

}

############################################################
# VPC ID
############################################################

variable "vpc_id" {

  description = "VPC ID"

  type = string

}

############################################################
# Private Subnets
############################################################

variable "private_subnet_ids" {

  description = "Private Subnet IDs"

  type = list(string)

}

############################################################
# Cluster Role ARN
############################################################

variable "cluster_role_arn" {

  description = "Cluster IAM Role"

  type = string

}

############################################################
# Node Group Role ARN
############################################################

variable "node_group_role_arn" {

  description = "Node Group IAM Role"

  type = string

}

############################################################
# Node Instance Type
############################################################

variable "instance_types" {

  description = "Worker Node Instance Type"

  type = list(string)

  default = ["t3.small"]

}

############################################################
# Desired Nodes
############################################################

variable "desired_size" {

  type = number

  default = 1

}

############################################################
# Minimum Nodes
############################################################

variable "min_size" {

  type = number

  default = 1

}

############################################################
# Maximum Nodes
############################################################

variable "max_size" {

  type = number

  default = 2

}
