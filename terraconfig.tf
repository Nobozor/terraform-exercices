terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "nginx" {
  name = "${var.container_image}"
}

# Create a container
resource "docker_container" "nginx" {
  count = var.number_of_containers
  name  = "${var.container_name}-${count.index}"
  image = docker_image.nginx.image_id
  privileged = var.priviledged
  memory = var.container_memory
  ports {
      internal = 80
      external = var.port_container_external+count.index
  }
}


