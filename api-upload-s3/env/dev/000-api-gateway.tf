resource "aws_api_gateway_rest_api" "api" {
  name               = "${local.environment}-api-upload-s3"
  description        = "API for uploading files to S3"
  binary_media_types = ["*/*"]
  endpoint_configuration {
    types = [
      "PRIVATE",
    ]
    vpc_endpoint_ids = [
      aws_vpc_endpoint.s3_api_upload_private.id
    ]
  }
}


resource "aws_api_gateway_deployment" "deployment" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  #stage_name  = aws_api_gateway_stage.stage.stage_name
  description = "deploy automatic-${formatdate("YYYY-MM-DD-hh-mm-ss", timestamp())}"

  triggers = {
    redeployment = sha1(jsonencode([
      
      aws_api_gateway_integration.delete_s3_integration_002.id,
      aws_api_gateway_integration.get_s3_integration_002.id,
      aws_api_gateway_integration.s3_delete_integration.id,
      aws_api_gateway_integration.s3_get_integration.id,
      aws_api_gateway_integration.s3_integration.id,
      aws_api_gateway_integration.s3_integration_002.id,
      aws_api_gateway_integration.s3_post_integration.id,
      aws_api_gateway_integration_response.delete_integration_response.id,
      aws_api_gateway_integration_response.delete_integration_response_002.id,
      aws_api_gateway_integration_response.get_integration_response.id,
      aws_api_gateway_integration_response.get_integration_response_002.id,
      aws_api_gateway_integration_response.integration_response.id,
      aws_api_gateway_integration_response.integration_response_002.id,
      aws_api_gateway_integration_response.post_integration_response.id,
      aws_api_gateway_method.delete_object_method.id,
      aws_api_gateway_method.delete_object_method_002.id,
      aws_api_gateway_method.get_object_method.id,
      aws_api_gateway_method.get_object_method_002.id,
      aws_api_gateway_method.object_method.id,
      aws_api_gateway_method.object_method_002.id,
      aws_api_gateway_method.post_object_method.id,
      aws_api_gateway_method_response.delete_method_response.id,
      aws_api_gateway_method_response.delete_method_response_002.id,
      aws_api_gateway_method_response.get_method_response.id,
      aws_api_gateway_method_response.get_method_response_002.id,
      aws_api_gateway_method_response.method_response.id,
      aws_api_gateway_method_response.method_response_002.id,
      aws_api_gateway_method_response.post_method_response.id,
      aws_api_gateway_resource.bucket_resource.id,
      aws_api_gateway_resource.bucket_resource_002.id,
      aws_api_gateway_resource.objetct_resource.id,
      aws_api_gateway_resource.objetct_resource_002.id,
      aws_api_gateway_resource.upload_resource.id,
      aws_api_gateway_resource.upload_resource_002.id,
      aws_api_gateway_rest_api.api.id,
      aws_api_gateway_rest_api_policy.this.id
      
    ]))
  }
  lifecycle {
    create_before_destroy = true
  }


  variables = {
    "answer" = "1"
  }
}