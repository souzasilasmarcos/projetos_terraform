locals {
  workload = {
    name  = "lasma-dev"
    owner = "infra"
    env   = "dev"
    area  = "it_eng"
  }


}

resource "aws_lambda_function" "test_lambda" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = "lambda_function_payload.zip"
  function_name = "${local.workload.env}-${local.workload.name}-lambda"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "function.handler"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "python3.10"

  environment {
    variables = {
      name = "ladma_lambda"
    }
  }
}