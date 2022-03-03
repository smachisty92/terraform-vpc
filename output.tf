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