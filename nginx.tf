resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "test-nginx"
    namespace = "test-customer"
    labels = {
      App = "test-nginx"
    }
  }

  spec {
    replicas = 3
    selector {
      match_labels = {
        App = "test-nginx"
      }
    }
    template {
      metadata {
        labels = {
         App = "test-nginx"
        }
      }
      spec {
        security_context {
          runAsUser = 1000
        container {
          image = "nginx:latest"
          name  = "example"

         port {
           container_port = 80
         }

         resources {
           limits = {
             cpu    = "0.5"
             memory = "512Mi"
           }
           requests = {
             cpu    = "250m"
             memory = "50Mi"
           }  
           }
         }
        }
      }
    }
  }
}
