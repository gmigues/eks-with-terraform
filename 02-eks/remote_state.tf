terraform {

  backend "s3" {
    bucket = "gms-terraform-state-dev"
    region = "us-east-1"
    key = "02-eks/terraform.tfstate"
    profile = "personal"
    
  }
}