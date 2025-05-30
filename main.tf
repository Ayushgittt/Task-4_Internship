resource "docker_image" "python_app_image" {
  name = "8192027760/python_app:v1"

  build {
    context    = "${path.module}"
    dockerfile = "Dockerfile"
  }
}

# Run container from built image
resource "docker_container" "python_app_container" {
  name  = "python_app_container"
  image = docker_image.python_app_image.image_id

  ports {
    internal = 5000
    external = 5000
  }
}