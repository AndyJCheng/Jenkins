provider "aws" {}



resource "aws_lambda_function" "lambda" {
  function_name = "lambda_sample"


  filename         = "lambda_sample.zip"
  role    = "arn:aws:iam::245598999155:role/service-role/firstFunction-role-m
5fqew7i"
  handler = "lambda_sample.lambda_handler"
  runtime = "python3.6"
}
