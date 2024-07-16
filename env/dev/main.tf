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
      version = "~> 5"
    }
  }

  required_version = ">= 1.6.2"
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      name     = local.workload.name
      workload = local.workload.name
      area     = local.workload.area
      env      = local.workload.env
      owner    = local.workload.owner

    }
  }
}