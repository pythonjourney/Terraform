module "vpc" {
  source = "../../modules/vpc"
  
  environment = "staging"
  vpc_cidr    = "172.16.0.0/16"
  
  public_subnets  = ["172.16.1.0/24", "172.16.2.0/24"]
  private_subnets = ["172.16.10.0/24", "172.16.11.0/24"]
  
  availability_zones = ["us-west-2a", "us-west-2b"]
  
  tags = {
    Project = "MyApp"
    Owner   = "DevTeam"
  }
}