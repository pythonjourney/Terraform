module "vpc" {
  source = "../../modules/vpc"
  
  environment = "dev"
  vpc_cidr    = "10.0.0.0/16"
  
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24", "10.0.11.0/24"]
  
  availability_zones = ["us-west-2a", "us-west-2b"]
  
  tags = {
    Project = "MyApp"
    Owner   = "DevTeam"
  }
}