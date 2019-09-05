variable "container_name" {
  description = "Name of the container"
  default = "blog"
}

variable "image_name" {
  description = "Image for container"
  default = "ghost:latest"
}

variable "init_port" {
  description = "Interal port for container"
  default = "2368"
}

variable "ext_port" {
  description = "external port for container"
  default = "80"
}