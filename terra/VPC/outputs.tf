output "vpc_id" {
  value = aws_vpc.VPC.id
}

output "publicsubnet_id" {
  value = aws_subnet.publicsubnet.id
}