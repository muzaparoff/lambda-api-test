resource "aws_security_group" "lambda_sg" {
  name        = "lambda_sg"
  description = "Security group for Lambda function"
  vpc_id      = aws_vpc.my_vpc.id

  ingress = var.lambda_vpc_security_group_rules
}