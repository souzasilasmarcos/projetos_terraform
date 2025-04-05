resource "aws_api_gateway_method" "object_method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource.id
  http_method   = "PUT"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}

resource "aws_api_gateway_method" "get_object_method" {
  rest_api_id      = aws_api_gateway_rest_api.api.id
  resource_id      = aws_api_gateway_resource.objetct_resource.id
  http_method      = "GET"
  authorization    = "NONE"
  api_key_required = true

  request_parameters = {
    "method.request.path.object" = true
  }
}

resource "aws_api_gateway_method" "delete_object_method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource.id
  http_method   = "DELETE"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}

resource "aws_api_gateway_method" "post_object_method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource.id
  http_method   = "POST"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}


#######

resource "aws_api_gateway_method" "object_method_002" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource_002.id
  http_method   = "PUT"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}

resource "aws_api_gateway_method" "get_object_method_002" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource_002.id
  http_method   = "GET"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}

resource "aws_api_gateway_method" "delete_object_method_002" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.objetct_resource_002.id
  http_method   = "DELETE"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.object" = true
  }
}