terraform {
  required_providers {
    aws = {
      version = "~> 4.13.0"
      source  = "hashicorp/aws"
    }
  }
}

# Download AWS provider
provider "aws" {
  region = "eu-south-1"
}
