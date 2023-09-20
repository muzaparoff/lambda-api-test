variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "lambda_function_name" {
  description = "Name for the Lambda function"
  type        = string
  default     = "hello_lambda"
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "lambda_handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "lambda_filename" {
  description = "Filename for the Lambda deployment package"
  type        = string
  default     = "lambda.zip"
}
