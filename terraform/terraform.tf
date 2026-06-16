terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
  }
  required_version = ">=1.15"
  backend "s3" {
    bucket         = "bulwark-grid-140858350392-ap-south-1-an"
    key            = "project/statefile/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
  }
}