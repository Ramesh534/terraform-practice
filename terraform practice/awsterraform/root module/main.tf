#----root/main.tf-----
provider "aws" {
  region = "${var.aws_region}"
}

# Deploy Storage Resources
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

module "network" {
  source = "./network"
  vpc_cidr = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip = "${var.accessip}"
}

# Deploy Compute reources

module "compute" {
  source = "./instance"
  instance_count = "${var.instance_count}"
  key_name = "${var.key_name}"
  public_key_path = "${var.public_key_path}"
  instance_type = "${var.server_instance_type}"
  subnets = "${module.network.public_subents}"
  security_group = "${module.network.public_sg}"
  subnet_ips = "${module.network.subnet_ips}"
}