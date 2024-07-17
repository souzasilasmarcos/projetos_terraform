locals {
  workload = {
    name  = "lasma-dev"
    owner = "infra"
    env   = "dev"
    area  = "it_eng"
  }


}



resource "aws_lambda_function" "lambda_function" {
  filename         = "${path.module}/lambda_function_payload.zip"
  function_name    = "${local.workload.env}-${local.workload.name}-lambda"
  role             = aws_iam_role.lambda_role.arn
  handler          = "function.lambda_handler"  
  runtime          = "python3.10"

  environment {
    variables = {
      name = "lasma_lambda"
    }
  }
}