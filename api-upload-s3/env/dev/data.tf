# VPC
data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [local.vpc_name]
  }
}

# Subnets PrivateDB (prd_private_bd_east1_*, QA_Subnet_Private_Database_1*, lab_private_db_east_1*)
data "aws_subnets" "private_db" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }

  filter {
    name   = "tag:Name"
    values = ["lab_private_db_east_1a", "lab_private_db_east_1c"]
  }
}

data "aws_subnet" "private_db" {
  for_each = toset(data.aws_subnets.private_db.ids)
  id       = each.value
}

# Subnets PrivateAPP (prd_priv_app_east1*, QA_Subnet_Private_App_1*, lab_private_app_east_1*)
data "aws_subnets" "private_app" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }

  filter {
    name   = "tag:Name"
    values = ["lab_private_db_east_1a", "lab_private_db_east_1c"]
  }
}

data "aws_subnet" "private_app" {
  for_each = toset(data.aws_subnets.private_app.ids)
  id       = each.value
}