resource "kubernetes_namespace" "ronin" {
  metadata {
    name = "ronin-namespace"
  }
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}
