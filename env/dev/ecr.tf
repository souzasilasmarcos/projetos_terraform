resource "aws_ecr_repository" "lambda_ops" {
  name                 = "lambda-ops"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}