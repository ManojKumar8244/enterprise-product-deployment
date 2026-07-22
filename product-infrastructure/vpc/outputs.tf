############################################################
# VPC OUTPUTS
############################################################

############################################################
# VPC
############################################################

output "vpc_id" {

  description = "VPC ID"

  value = aws_vpc.main.id

}

############################################################
# Public Subnets
############################################################

output "public_subnet_ids" {

  description = "Public Subnet IDs"

  value = [

    aws_subnet.public1.id,

    aws_subnet.public2.id

  ]

}

############################################################
# Private Subnets
############################################################

output "private_subnet_ids" {

  description = "Private Subnet IDs"

  value = [

    aws_subnet.private1.id,

    aws_subnet.private2.id

  ]

}

############################################################
# Internet Gateway
############################################################

output "internet_gateway_id" {

  description = "Internet Gateway"

  value = aws_internet_gateway.igw.id

}

############################################################
# NAT Gateway
############################################################

output "nat_gateway_id" {

  description = "NAT Gateway"

  value = aws_nat_gateway.nat.id

}

############################################################
# Elastic IP
############################################################

output "nat_public_ip" {

  description = "NAT Elastic IP"

  value = aws_eip.nat.public_ip

}

############################################################
# Route Tables
############################################################

output "public_route_table_id" {

  value = aws_route_table.public.id

}

output "private_route_table_id" {

  value = aws_route_table.private.id

}
