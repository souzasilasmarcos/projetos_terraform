provider "aws" {
  region              = "us-east-1" 
  allowed_account_ids = ["account_id"]
  profile             = "seu_profile"
  #
  default_tags {
    tags = {
      iaac        = local.workload.iaac
    }
  }
}
