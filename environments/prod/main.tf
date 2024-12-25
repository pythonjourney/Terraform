module "vpc" {
  source = "../../modules/vpc"
  
  environment = "prod"
  vpc_cidr    = "192.168.0.0/16"
  
  public_subnets  = ["192.168.1.0/24", "192.168.2.0/24"]
  private_subnets = ["192.168.10.0/24", "192.168.11.0/24"]
  
  availability_zones = ["us-west-2a", "us-west-2b"]
  
  tags = {
    Project = "MyApp"
    Owner   = "DevTeam"
  }
}