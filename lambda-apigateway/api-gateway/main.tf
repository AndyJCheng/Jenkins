provider "aws" {}

data "template_file" "aws_api_swagger" {
  count    = "${var.enable == "true" ? 1 : 0}"
  template = "${file(var.swagger-file_path)}"

  vars = {
    lambda_name = "${var.lambda_name}"
  }
}
resource "aws_api_gateway_rest_api" "api-gateway" {
  name        = "${var.name}"
  description = "${var.description}"
  body        = "${data.template_file.aws_api_swagger[0].rendered}"
  endpoint_configuration {
    types = ["REGIONAL"]
  }


}
resource "aws_api_gateway_deployment" "MyDemoDeployment" {

  rest_api_id = "${aws_api_gateway_rest_api.api-gateway.id}"
  stage_name  = "dev"

}

resource "aws_lambda_permission" "lambda_permission" {
  statement_id  = "AllowMyDemoAPIInvoke"
  action        = "lambda:InvokeFunction"
  function_name = "${var.lambda_name}"
  principal     = "apigateway.amazonaws.com"

  # The /*/*/* part allows invocation from any stage, method and resource path
  # within API Gateway REST API.
  source_arn = "${aws_api_gateway_rest_api.api-gateway.execution_arn}/*/*/*"
}
