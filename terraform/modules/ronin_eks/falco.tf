resource "helm_release" "falco" {
  name       = "falco"
  namespace  = "falco"
  repository = "https://falcosecurity.github.io/charts"
  chart      = "falco"
  version    = "4.21.3"

  create_namespace = true

  set {
    name  = "driver.kind"
    value = "modern_ebpf"
  }

  values = [
    file("${path.module}/../../../k8s/falco/custom-rules.yaml")
  ]
}
