locals {
  default_tags = {
    workload = "lasma"
    name     = "terraform-dev"
    owner    = "infra"
    env      = "dev"
    area     = "academy"

  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b6c2d49148000cd5"
  instance_type = "t2.nano"
}

