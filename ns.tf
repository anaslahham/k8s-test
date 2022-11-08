resource "kubernetes_namespace" "example2" {
  metadata {
    name = "test-from-terraform"
  }
}
