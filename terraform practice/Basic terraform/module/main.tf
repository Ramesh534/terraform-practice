module "image" {
  source = "image"
  image_name = "${var.image_name}"
}

module "container" {
  source = "container"
  image = "${module.image.image_out}"
  container_name = "${var.container_name}"
  init_port = "${var.init_port}"
  ext_port = "${var.ext_port}"
}