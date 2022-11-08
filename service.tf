resource "kubernetes_service" "test-nginx" {

  metadata {
    labels = {
      app = "test-nginx"
    }
    name = "test-nginx"
    namespace = "test-customer"
  }

  spec {
    port {
      name = "api"
      port = 80
      target_port = 80
    }
    selector = {
      app = "test-nginx"
    }
    type = "ClusterIP"
  }
}
