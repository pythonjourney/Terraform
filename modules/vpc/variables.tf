variable "environment" {
  type        = string
  description = "Environment name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "tags" {
  type        = map(string)
  description = "Tags for resources"
  default     = {}
}