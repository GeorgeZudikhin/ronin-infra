resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "7.8.23"

  namespace        = "argocd"
  create_namespace = true
}

resource "kubernetes_manifest" "argo-app-ronin-db" {
  manifest = yamldecode(file("${path.module}/../../../k8s/argocd-apps/ronin-db.yaml"))
}

resource "kubernetes_manifest" "argo-app-ronin-backend" {
  manifest = yamldecode(file("${path.module}/../../../k8s/argocd-apps/ronin-backend.yaml"))
}

resource "kubernetes_manifest" "argo-app-ronin-frontend" {
  manifest = yamldecode(file("${path.module}/../../../k8s/argocd-apps/ronin-frontend.yaml"))
}
