resource "aws_api_gateway_integration" "s3_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource.id
  http_method             = aws_api_gateway_method.object_method.http_method
  integration_http_method = "PUT"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/load/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-api-upload-s3'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

resource "aws_api_gateway_integration" "s3_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource.id
  http_method             = aws_api_gateway_method.get_object_method.http_method
  integration_http_method = "GET"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/load/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-api-upload-s3'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

resource "aws_api_gateway_integration" "s3_delete_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource.id
  http_method             = aws_api_gateway_method.delete_object_method.http_method
  integration_http_method = "DELETE"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/load/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-api-upload-s3'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

resource "aws_api_gateway_integration" "s3_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource.id
  http_method             = aws_api_gateway_method.post_object_method.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/load/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-api-upload-s3'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

#############33

resource "aws_api_gateway_integration" "s3_integration_002" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource_002.id
  http_method             = aws_api_gateway_method.object_method_002.http_method
  integration_http_method = "PUT"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/files/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-lambda-send-messages-sqs'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

resource "aws_api_gateway_integration" "get_s3_integration_002" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource_002.id
  http_method             = aws_api_gateway_method.get_object_method_002.http_method
  integration_http_method = "GET"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/files/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-lambda-send-messages-sqs'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}

resource "aws_api_gateway_integration" "delete_s3_integration_002" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.objetct_resource_002.id
  http_method             = aws_api_gateway_method.delete_object_method_002.http_method
  integration_http_method = "DELETE"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:${var.aws_region}:s3:path/{bucket}/files/{object}"

  credentials = aws_iam_role.api_gateway_role.arn

  request_parameters = {
    "integration.request.path.bucket" = "'dev-lambda-send-messages-sqs'"
    "integration.request.path.object" = "method.request.path.object"
  }

  request_templates = {
    "application/json" = ""
  }

  passthrough_behavior = "WHEN_NO_MATCH"
}