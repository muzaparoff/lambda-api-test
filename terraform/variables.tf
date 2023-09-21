# Common variables used globally across the project
variable "aws_region" {
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "aws_access_key_id" {
  description = "AWS access key ID for authentication."
}

variable "aws_secret_access_key" {
  description = "AWS secret access key for authentication."
}

variable "environment" {
  description = "The environment name for your resources (e.g., dev, prod)."
}

variable "tags" {
  description = "A map of tags to apply to resources."
  type        = map(string)
  default     = {}
}

# VPC-specific variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for public subnets."
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for private subnets."
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

# Lambda-specific variables
variable "lambda_function_name" {
  description = "Name of the Lambda function."
  default     = "my-lambda-function"
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function."
  default     = "python3.9"
}

variable "lambda_handler" {
  description = "Handler function for the Lambda function."
  default     = "lambda_function.handler"
}

variable "lambda_filename" {
  description = "Path to the Lambda deployment package."
  default     = "lambda.zip"
}

variable "secret_api_key" {
  description = "Secret API key or other sensitive information."
  default     = "your-secret-key"
}
