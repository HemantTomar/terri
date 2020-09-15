provider "aws" {
  # region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.0.0.0/16"
  public_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  
}

