terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "environments/${var.environment}/terraform.tfstate"
    region = "us-west-2"
    #dynamodb_table = "terraform-locks"
  }
}



