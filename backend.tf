terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "environments/${var.environment}/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-locks"
  }
}



