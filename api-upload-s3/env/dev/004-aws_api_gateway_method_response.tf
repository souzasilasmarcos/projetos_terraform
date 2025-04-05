resource "aws_api_gateway_method_response" "method_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource.id
  http_method = aws_api_gateway_method.object_method.http_method
  status_code = "200"
}

resource "aws_api_gateway_method_response" "get_method_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource.id
  http_method = aws_api_gateway_method.get_object_method.http_method
  status_code = "200"
}

resource "aws_api_gateway_method_response" "delete_method_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource.id
  http_method = aws_api_gateway_method.delete_object_method.http_method
  status_code = "200"
}

resource "aws_api_gateway_method_response" "post_method_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource.id
  http_method = aws_api_gateway_method.post_object_method.http_method
  status_code = "200"
}

###########

resource "aws_api_gateway_method_response" "method_response_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource_002.id
  http_method = aws_api_gateway_method.object_method_002.http_method
  status_code = "200"
}

resource "aws_api_gateway_method_response" "get_method_response_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource_002.id
  http_method = aws_api_gateway_method.get_object_method_002.http_method
  status_code = "200"
}

resource "aws_api_gateway_method_response" "delete_method_response_002" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.objetct_resource_002.id
  http_method = aws_api_gateway_method.delete_object_method_002.http_method
  status_code = "200"
}