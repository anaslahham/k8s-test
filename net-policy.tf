resource "kubernetes_network_policy_v1" "test-customer" {
  metadata {
    name      = "test-customer"
    namespace = "test-customer"
  }

  spec {
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


    policy_types = ["Ingress"]
  }
