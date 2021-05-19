output "vpc-cidr" {
  value = aws_vpc.mainVPC.cidr_block
}

output "vpc-arn" {
  value = aws_vpc.mainVPC.arn
}

output "publicSubnet-id" {
  value = aws_subnet.publicSubnet.id
}

output "privateSubnet-id" {
  value = aws_subnet.privateSubnet.id
}

output "IGW-id" {
  value = aws_internet_gateway.IGW.id
}