output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = aws_subnet.private[*].id
}


output "websg_id" {

   value = aws_security_group.web_sg.id 
}


output "fastapisg_id" {

 value = aws_security_group.fastapi_sg.id

}
