data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/lambda"
  output_path = "${path.module}/lambda.zip"
}

resource "aws_lambda_function" "example_lambda" {
  function_name    = "example-lambda"
  role             = aws_iam_role.lambda.arn
  handler          = "handler.handler"
  runtime          = "provided.al2"
  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  image_uri = "455370095424.dkr.ecr.sa-east-1.amazonaws.com/lambda-ops"

  depends_on = [aws_ecr_repository.lambda]
}

resource "aws_ecr_repository_policy" "lambda" {  
  repository  = aws_ecr_repository.lambda.name

  policy = jsonencode({
    Version = "2008-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = "*",
      Action    = "ecr:GetAuthorizationToken",
    }],
  })
}

resource "aws_iam_role" "lambda" {
  name = "lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com",
      },
    }],
  })
}