resource "kubernetes_network_policy_v1" "example" {
  metadata {
    name      = "terraform-example-network-policy-deny-ns"
    namespace = "test-customer"
  }

  spec {
    pod_selector {
      }


    policy_types = ["Ingress", "Egress"]
  }
}
