resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"
  namespace  = kubernetes_namespace.ronin.metadata[0].name
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.12.1"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }

  set {
    name  = "controller.extraArgs.default-ssl-certificate"
    value = "ronin-namespace/ronin-tls"
  }
}
