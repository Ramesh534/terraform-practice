# jenkins volume

resource "docker_volume" "jenkins_volume" {
  name = "jenkins_data"
}

# start the jenkins container

resource "docker_container" "jenkins_container" {
  image = "jenkins:terraform"
  name = "jenkins"
  ports {
    internal = "8080"
    external = "8080"
  }
  volumes {
    volume_name = "${docker_volume.jenkins_volume.name}"
    container_path = "/var/jenkins_home"
  }
  volumes {
    host_path = "/var/run/docker.sock"
    container_path = "/var/run/docker/sock"
  }
}