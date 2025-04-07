resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  chart            = "cert-manager"
  repository       = "https://charts.jetstack.io"
  version          = "v1.17.1"
  namespace        = "cert-manager"
  create_namespace = true 

  set {
    name = "crds.enabled"
    value = "true"
  }
}