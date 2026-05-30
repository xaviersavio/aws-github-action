terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket        = "tfstate-dev-ap-southeast-2-jokg8r"
    key           = "vpc/terraform.tfstate"
    region        = "ap-southeast-2"
    encrypt       = true
    use_lockfile  = true
  }
}
