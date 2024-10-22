terraform {
  backend  "s3"{}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


variable "environment" {
  default = "none"
}



module "aws_s3_bucket" {
  source                   = "./modules/s3_bucket"
  environment                   = var.environment

}
