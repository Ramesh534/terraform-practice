provider "aws" {
  region = "${var.aws_region}"
}

# Deploy storage resources

module "storage" {
  source = "./storage"
}
