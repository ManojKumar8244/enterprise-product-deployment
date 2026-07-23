############################################################
# variables.tf
############################################################

variable "aws_region" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1" {
  type = string
}

variable "public_subnet_2" {
  type = string
}

variable "private_subnet_1" {
  type = string
}

variable "private_subnet_2" {
  type = string
}

variable "kubernetes_version" {
  description = "EKS Kubernetes Version"
  type        = string
  default     = "1.31"
}

############################################################
# Database Username
############################################################

variable "db_username" {
  type      = string
  sensitive = true
}

############################################################
# Database Password
############################################################

variable "db_password" {
  type      = string
  sensitive = true
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

