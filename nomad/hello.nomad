# nomad/hello.nomad
job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "app" {
    count = 1

    task "python-app" {
      driver = "docker"

      config {
        image = "hello-devops:latest"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
