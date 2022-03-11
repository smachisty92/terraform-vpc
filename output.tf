output "VPC_ID" {
  value = aws_vpc.main.id
}

output "VPC_CIDR" {
  value = aws_vpc.main.cidr_block
}

output "PUBLIC-SUBNETS_ID" {
  value = aws_subnet.public-subnet.*.id
}

output "PUBLIC-SUBNETS_CIDR" {
  value = aws_subnet.public-subnet.*.cidr_block
}

output "PRIVATE-SUBNETS_ID" {
  value = aws_subnet.private-subnet.*.id
}

output "PRIVATE-SUBNETS_CIDR" {
  value = aws_subnet.private-subnet.*.cidr_block
}

output "DEFAULT_VPC_ID" {
  value = var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
  value = var.DEFAULT_VPC_CIDR
}

output "INTERNAL_HOSTED_ZONEID" {
  value = data.aws_route53_zone.internal.zone_id
}

output "INTERNAL_HOSTED_NAME" {
  value = data.aws_route53_zone.internal.name
}