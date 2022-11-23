variable "RELEASE_VERSION" {
}

target "kroki" {
  tags = ["berkus/kroki-server:${RELEASE_VERSION}", "berkus/kroki-server:latest"]
}
