role_mapping = {
  custom_role_mapping = {}

  built_in_role_mapping = {
    resource_groups = {
      "aks_re1" = { # scope
        "Reader" = { # built-in role
          aks_ingress_application_gateway_identities = { 
            keys = ["cluster_re1"] # assignee
          }
        }
      }
    }
    application_gateway_platforms = {
      "agw" = {
        "Contributor" = {
          aks_ingress_application_gateway_identities = {
            keys = ["cluster_re1"]
          }
        }
      }
    }
    managed_identities = {
      "aks_usermsi" = {
        "Managed Identity Operator" = {
          aks_ingress_application_gateway_identities = {
            keys = ["cluster_re1"]
          }
        }
      }
    }
    aks_clusters = {
      "cluster_re1" = {
        "Azure Kubernetes Service RBAC Cluster Admin" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
    }
  }
}