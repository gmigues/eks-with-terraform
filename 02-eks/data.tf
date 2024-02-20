data "terraform_remote_state" "vpc" {
    backend = "s3"

    config = {
      bucket = "gms-terraform-state-dev"
      key = "01-vpc/terraform.tfstate"
      region = var.region
      profile = var.profile
    }
  
}