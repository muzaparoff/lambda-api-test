module "vpc" {
  source = "./vpc"
}

module "lambda" {
  source = "./lambda"
}