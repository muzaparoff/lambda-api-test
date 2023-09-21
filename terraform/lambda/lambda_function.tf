resource "aws_lambda_function" "hello_lambda" {
  function_name = var.lambda_function_name
  runtime       = var.lambda_runtime
  handler       = var.lambda_handler
  filename      = var.lambda_filename
  role          = aws_iam_role.lambda_role.arn

  vpc_config {
    subnet_ids         = aws_subnet.private_subnet[*].id
    security_group_ids = [aws_security_group.lambda_sg.id]
  }

  environment {
    variables = {
      SECRET_API_KEY = var.secret_api_key
    }
  }
}