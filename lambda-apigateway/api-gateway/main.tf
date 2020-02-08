provider "aws" {}

data "template_file" "aws_api_swagger" {
  count    = "${var.enable == "true" ? 1 : 0}"
  template = "${file(var.swagger-file_path)}"

  vars = {
    lambda_name        = "${var.lambda_name}"
  }
}
resource "aws_api_gateway_rest_api" "api-gateway" {
  name        = "${var.name}"
  description = "${var.description}"
  body        = "${data.template_file.aws_api_swagger[0].rendered}"


}