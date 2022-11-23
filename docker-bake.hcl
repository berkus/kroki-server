variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["kroki"]
}

target "kroki" {
  context = "server"
  contexts = {
    nomnoml = "./nomnoml"
    vega = "./vega"
    wavedrom = "./wavedrom"
    bytefield = "./bytefield"
  }
  dockerfile = "ops/docker/jdk11-alpine/Dockerfile"
  tags = ["berkus/kroki-server:${TAG}"]
}
