# Pulls the image
resource "docker_image" "grafana" {
  name = "grafana/grafana"
}

resource "docker_image" "influxdb" {
  name = "influxdb"
}

resource "docker_image" "telegraf" {
  name = "telegraf"
}

# Create a container
resource "docker_container" "foo" {
  image = docker_image.ubuntu.latest
  name  = "foo"
}