provider "aws" {
  region = var.region

  # Optional provider settings
  default_tags {
    tags = {
      Environment = var.environment
      Managed_By  = "Terraform"
    }
  }
}

# Define versions for providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Use appropriate version
    }
  }
  required_version = ">= 1.0.0"
}