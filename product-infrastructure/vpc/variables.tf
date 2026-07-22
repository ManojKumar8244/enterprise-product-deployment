############################################################
# VPC Module Variables
############################################################

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_1" {
  description = "Public Subnet 1 CIDR"
  type        = string
}

variable "public_subnet_2" {
  description = "Public Subnet 2 CIDR"
  type        = string
}

variable "private_subnet_1" {
  description = "Private Subnet 1 CIDR"
  type        = string
}

variable "private_subnet_2" {
  description = "Private Subnet 2 CIDR"
  type        = string
}
