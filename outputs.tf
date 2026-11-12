output "vpc_id" {
  value = aws_vpc.main.id
}

output "pub_subnet_id" {
  value = aws_subnet.public.id
}

output "priv_subnet_id" {
  value = aws_subnet.private.id
}
