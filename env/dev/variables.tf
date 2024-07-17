variable "aws_region" {
  default     = "us-east-1"
  description = "region provider"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "instance type ec2 linux"

}

variable "lambda_function_name" {
  description = "Nome da função Lambda"
  type        = string
  default     = "lambda"
}
