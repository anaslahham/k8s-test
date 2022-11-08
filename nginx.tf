resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "test-nginx"
    namespace = "test-customer"
    labels = {
      app = "test-nginx"
    }
  }

  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "test-nginx"
      }
    }
    template {
      metadata {
        labels = {
         app = "test-nginx"
        }
      }
      spec {
        security_context { 
         run_as_user = 1000
        }
        container {
          image = "nginx"
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
