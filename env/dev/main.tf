terraform {

  cloud {
    organization = "lasmarco"
    workspaces {
      name = "iaac-lasmarco-dev"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }

  required_version = ">= 1.6.0"
}

provider "aws" {
    region = var.aws_region
}