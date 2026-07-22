############################################################
# EKS MODULE
############################################################

############################################################
# Local Tags
############################################################

locals {

  common_tags = {

    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"

  }

}

############################################################
# Security Group for EKS Cluster
############################################################

resource "aws_security_group" "eks_cluster" {

  name = "${var.project_name}-${var.environment}-eks-sg"

  description = "Security Group for Amazon EKS Cluster"

  vpc_id = var.vpc_id

  tags = merge(

    local.common_tags,

    {

      Name = "${var.project_name}-eks-sg"

    }

  )

}

############################################################
# Allow All Outbound Traffic
############################################################

resource "aws_vpc_security_group_egress_rule" "all_outbound" {

  security_group_id = aws_security_group.eks_cluster.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

}

############################################################
# Allow HTTPS within Security Group
############################################################

resource "aws_vpc_security_group_ingress_rule" "https" {

  security_group_id = aws_security_group.eks_cluster.id

  referenced_security_group_id = aws_security_group.eks_cluster.id

  from_port = 443

  to_port = 443

  ip_protocol = "tcp"

}

############################################################
# CloudWatch Log Types
############################################################

locals {

  cluster_logs = [

    "api",

    "audit",

    "authenticator",

    "controllerManager",

    "scheduler"

  ]

}

############################################################
# Amazon EKS Cluster
############################################################

resource "aws_eks_cluster" "cluster" {

  name    = var.cluster_name
  version = var.kubernetes_version

  role_arn = var.cluster_role_arn

  enabled_cluster_log_types = local.cluster_logs

  vpc_config {

    subnet_ids = var.private_subnet_ids

    endpoint_private_access = true

    endpoint_public_access = true

    security_group_ids = [
      aws_security_group.eks_cluster.id
    ]
  }

  access_config {

    authentication_mode = "API_AND_CONFIG_MAP"

    bootstrap_cluster_creator_admin_permissions = true

  }

  upgrade_policy {

    support_type = "EXTENDED"

  }

  depends_on = [

    aws_security_group.eks_cluster

  ]

  tags = merge(

    local.common_tags,

    {

      Name = var.cluster_name

    }

  )

}

############################################################
# Managed Node Group
############################################################

resource "aws_eks_node_group" "main" {

  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "${var.project_name}-nodegroup"
  node_role_arn   = var.node_group_role_arn

  subnet_ids     = var.private_subnet_ids
  instance_types = var.instance_types

  capacity_type = "ON_DEMAND"
  ami_type      = "AL2023_x86_64_STANDARD"
  disk_size     = 20

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    Environment = var.environment
    Project     = var.project_name
  }

  depends_on = [
    aws_eks_cluster.cluster
  ]

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project_name}-nodegroup"
    }
  )
}

############################################################
# CoreDNS
############################################################

resource "aws_eks_addon" "coredns" {

  cluster_name = aws_eks_cluster.cluster.name

  addon_name = "coredns"

  depends_on = [

    aws_eks_node_group.main

  ]

}

############################################################
# kube-proxy
############################################################

resource "aws_eks_addon" "kube_proxy" {

  cluster_name = aws_eks_cluster.cluster.name

  addon_name = "kube-proxy"

  depends_on = [

    aws_eks_node_group.main

  ]

}

############################################################
# Amazon VPC CNI
############################################################

resource "aws_eks_addon" "vpc_cni" {

  cluster_name = aws_eks_cluster.cluster.name

  addon_name = "vpc-cni"

  depends_on = [

    aws_eks_node_group.main

  ]

}
