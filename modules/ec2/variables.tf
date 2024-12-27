variable "ami_id" {

    description = "AMI id for the EC2 instance"
    type = string
}

variable "instance_type" {

    description = "Instance configuration for the EC2"
    type = string
  
}

variable "subnet_id" {

    description = "Id of the subnet where EC2 should be launched"
    type = string
  
}

variable "vpc_security_group_ids" {

    description = "List of security groups to be attached to ec2 instance"
    type = list(string)
  
}