output "vpc-cidr" {
  value = aws_vpc.mainVPC.cidr_block
}

output "vpc-arn" {
  value = aws_vpc.mainVPC.arn
}

output "vpc-id" {
  value = aws_vpc.mainVPC.id
}