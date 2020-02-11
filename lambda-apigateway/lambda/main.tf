provider "aws" {}

variable "lambda_name" {
  
}

variable "handler_name" {
  
}



resource "aws_lambda_function" "lambda" {
  function_name = "${var.lambda_name}"


  filename = "${var.lambda_name}.zip"
  role     = "arn:aws:iam::245598999155:role/service-role/firstFunction-role-m5fqew7i"
  handler  = "${var.lambda_name}.${var.handler_name}"
  runtime  = "python3.6"
}
