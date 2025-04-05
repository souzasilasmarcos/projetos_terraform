terraform {
  required_version = ">= 1.6.2"

  backend "s3" {
    bucket              = "tf-account_id"
    key                 = "dev-iaac-api-upload-s3.tfstate"
    region              = "us-east-1"
    profile             = "seu_profile"
    allowed_account_ids = ["account_id"]
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
}