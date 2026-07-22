############################################################
# EKS OUTPUTS
############################################################

output "cluster_name" {

  description = "EKS Cluster Name"

  value = aws_eks_cluster.cluster.name

}

output "cluster_endpoint" {

  description = "Cluster Endpoint"

  value = aws_eks_cluster.cluster.endpoint

}

output "cluster_certificate_authority_data" {

  description = "Certificate"

  value = aws_eks_cluster.cluster.certificate_authority[0].data

}

output "cluster_security_group_id" {

  value = aws_security_group.eks_cluster.id

}

output "node_group_name" {

  value = aws_eks_node_group.main.node_group_name

}

############################################################
# OIDC Provider ARN
############################################################

output "oidc_provider_arn" {

  description = "OIDC Provider ARN"

  value = aws_iam_openid_connect_provider.eks.arn

}

############################################################
# OIDC Provider URL
############################################################

output "oidc_provider_url" {

  description = "OIDC Provider URL"

  value = aws_iam_openid_connect_provider.eks.url

}
