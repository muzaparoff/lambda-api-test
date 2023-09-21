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
