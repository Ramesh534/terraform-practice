resource "docker_network" "public_bridge_network" {
  name = "public_ghost_network"
  driver = "bridge"
}

resource "docker_network" "private_bridge_network" {
  name = "private_bridge_network"
  driver = "bridge"
  internal = true
}