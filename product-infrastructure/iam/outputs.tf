############################################################
# IAM OUTPUTS
############################################################

output "cluster_role_arn" {

  description = "EKS Cluster IAM Role ARN"

  value = aws_iam_role.eks_cluster_role.arn

}

output "node_group_role_arn" {

  description = "Node Group IAM Role ARN"

  value = aws_iam_role.node_group_role.arn

}

############################################################
# OIDC Provider ARN
############################################################

#output "oidc_provider_arn" {

#  value = aws_iam_openid_connect_provider.eks.arn

#}

############################################################
# OIDC Provider URL
############################################################

#output "oidc_provider_url" {

#  value = aws_eks_cluster.eks.identity[0].oidc[0].issuer

#}
