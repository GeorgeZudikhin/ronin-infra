resource "helm_release" "gatekeeper" {
  name       = "gatekeeper"
  namespace  = "gatekeeper-system"
  repository = "https://open-policy-agent.github.io/gatekeeper/charts"
  chart      = "gatekeeper"
  version    = "3.19.1"

  create_namespace = true

  values = [
    yamlencode({
      audit = {
        enabled = true
      }
      validatingWebhook = {
        enabled = true
      }
    })
  ]
}
