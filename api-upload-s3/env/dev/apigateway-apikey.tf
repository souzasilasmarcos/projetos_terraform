resource "aws_api_gateway_api_key" "this" {
  name = "${local.name}-${local.environment}"
}