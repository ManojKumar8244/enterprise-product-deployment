############################################################
# IAM MODULE
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
# EKS CLUSTER TRUST POLICY
############################################################

data "aws_iam_policy_document" "eks_cluster_assume_role" {

  statement {

    effect = "Allow"

    principals {

      type = "Service"

      identifiers = [
        "eks.amazonaws.com"
      ]

    }

    actions = [
      "sts:AssumeRole"
    ]

  }

}

############################################################
# EKS CLUSTER ROLE
############################################################

resource "aws_iam_role" "eks_cluster_role" {

  name = "${var.project_name}-${var.environment}-cluster-role"

  assume_role_policy = data.aws_iam_policy_document.eks_cluster_assume_role.json

  tags = local.common_tags

}

############################################################
# Attach AmazonEKSClusterPolicy
############################################################

resource "aws_iam_role_policy_attachment" "cluster_policy" {

  role = aws_iam_role.eks_cluster_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

}

############################################################
# Attach AmazonEKSVPCResourceController
############################################################

resource "aws_iam_role_policy_attachment" "vpc_controller" {

  role = aws_iam_role.eks_cluster_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"

}

############################################################
# NODE GROUP TRUST POLICY
############################################################

data "aws_iam_policy_document" "node_assume_role" {

  statement {

    effect = "Allow"

    principals {

      type = "Service"

      identifiers = [
        "ec2.amazonaws.com"
      ]

    }

    actions = [
      "sts:AssumeRole"
    ]

  }

}

############################################################
# NODE GROUP ROLE
############################################################

resource "aws_iam_role" "node_group_role" {

  name = "${var.project_name}-${var.environment}-nodegroup-role"

  assume_role_policy = data.aws_iam_policy_document.node_assume_role.json

  tags = local.common_tags

}

############################################################
# Worker Node Policy
############################################################

resource "aws_iam_role_policy_attachment" "worker_node" {

  role = aws_iam_role.node_group_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

}

############################################################
# Amazon ECR Read Only
############################################################

resource "aws_iam_role_policy_attachment" "ecr_readonly" {

  role = aws_iam_role.node_group_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

}

############################################################
# Amazon VPC CNI
############################################################

resource "aws_iam_role_policy_attachment" "cni" {

  role = aws_iam_role.node_group_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"

}

############################################################
# Systems Manager
############################################################

resource "aws_iam_role_policy_attachment" "ssm" {

  role = aws_iam_role.node_group_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}
