terraform {
  backend "s3" {
    bucket = "s3-bucket-mandy-terraform"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.63.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}