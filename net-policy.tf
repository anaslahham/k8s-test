resource "kubernetes_network_policy_v1" "test-customer" {
  metadata {
    name      = "test-customer"
    namespace = "test-customer"
  }

  spec {
    policy_types = ["Ingress"] 
    pod_selector {
      app = "test-nginx"
    }

    ingress {
      ports {
        port     = "80"
        protocol = "TCP"
      }
 

      }

      
    }

     }
