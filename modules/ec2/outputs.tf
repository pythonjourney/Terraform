output "instance_id" {

description = "public ip of the EC2 Instance"
value = aws_instance.ec2_instance.id
  
}

output "private_ip" {

    description = "private ip of the ec2 instance"
    value = aws_instance.ec2_instance.private_ip
  
}

output "public_ip" {

    description = "Public ip of the ec2 instance"
   value = aws_instance.ec2_instance.public_ip
}

