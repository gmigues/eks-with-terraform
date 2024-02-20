terraform {

    required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }

  backend "s3" {
    bucket = "gms-terraform-state-dev"
    region = "us-east-1"
    key = "01-vpc/terraform.tfstate"
    
  }
}

provider "aws" {
  profile = var.profile
  region = var.region
}