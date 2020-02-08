provider "aws" {}
resource "aws_lambda_function" "lambda" {
  function_name = "hello_lambda"


  filename = "hello_lambda.zip"
  role    = "arn:aws:iam::245598999155:role/service-role/firstFunction-role-m5fqew7i"
  handler = "hello_lambda.lambda_handler"
  runtime = "python3.6"
}