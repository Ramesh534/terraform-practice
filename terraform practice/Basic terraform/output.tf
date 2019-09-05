# Output of the IP adders of the container

output "ip_address" {
  value = "${docker_container.container_id.ip_address}"
  description = "Ip address of the container"
}

# Output name of the container

output "conterner_name" {
  value = "${docker_container.container_id.name}"
  description = "Name of the container"
}