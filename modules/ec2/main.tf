resource "aws_instance" "ec2_instance" {
  
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  associate_public_ip_address = true

  tags = {

    Name = "ec2_instance_tag"
  }

}