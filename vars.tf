variable "container_memory" {
    type = number
    default = 1024
    description = "value of memory"
}

variable "container_image" {
    type = string
    default = "nginx:latest"
    description = "value of image"
}

variable "container_name" {
    type = string
    default = "nginx"
    description = "value of name"
}

variable "priviledged" {
    type = bool
    default = false
    description = "value of privileged"
}

variable "number_of_containers" {
    type = number
    default = 3
    description = "number of containers"
}

variable "port_container_external" {
    type = number
    default = 3000
    description = "value of external port"
}