module "vpc" {
  source = "../../modules/vpc"
  
  environment = "dev"
  vpc_cidr    = "10.0.0.0/16"
  
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24", "10.0.11.0/24"]
  
  availability_zones = ["us-east-1a", "us-east-1b"]
  
  tags = {
    Project = "MyApp"
    Owner   = "DevTeam"
  }
}


# module "ec2" {
  

#   source = "../../modules/ec2"
#   ami_id = "ami-0e2c8caa4b6378d8c"
#   instance_type = "t2.micro"
#   subnet_id = module.vpc.aws_subnet.Public.id
#   vpc_security_group_ids = ["sg-06b78b63f883abd36"]
# }

module "ec2" {
  source = "../../modules/ec2"

  ami_id               = var.ami_id
  instance_type        = var.instance_type
  subnet_id             = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids = [module.vpc.fastapisg_id]
}