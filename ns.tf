resource "kubernetes_namespace" "test-customer" {
  metadata {
    name = "test-customer"
  }
}
