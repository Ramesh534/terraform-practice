provider "aws" {
  region = "${var.aws_region}"
}

# Deploy storage resources

module "s3" {
  source = "./s3"
  project_name = "${var.project_name}"
}
