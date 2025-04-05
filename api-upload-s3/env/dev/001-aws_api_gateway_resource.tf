resource "aws_api_gateway_resource" "upload_resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = "upload"
}

resource "aws_api_gateway_resource" "bucket_resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_resource.upload_resource.id
  path_part   = "{bucket}"
}

resource "aws_api_gateway_resource" "objetct_resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_resource.bucket_resource.id
  path_part   = "{object}"
}

###########3

resource "aws_api_gateway_resource" "upload_resource_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = "send_message"
}

resource "aws_api_gateway_resource" "bucket_resource_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_resource.upload_resource_002.id
  path_part   = "{bucket}"
}


resource "aws_api_gateway_resource" "objetct_resource_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_resource.bucket_resource_002.id
  path_part   = "{object}"
}