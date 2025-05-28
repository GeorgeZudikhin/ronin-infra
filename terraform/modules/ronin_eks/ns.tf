resource "kubernetes_namespace" "ronin" {
  metadata {
    name = "ronin-namespace"
  }
}
