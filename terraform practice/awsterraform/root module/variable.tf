variable "aws_region" {}

### s3 variables

variable "project_name" {}

# vpc variables

variable "vpc_cidr" {}
variable "public_cidrs" {
  type = "list"
}
variable "accessip" {}

### instance variables
variable "key_name" {}
variable "public_key_path" {}
variable "server_instance_type" {}
variable "instance_count" {
  default = 1

}