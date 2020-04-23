# This policy doesn't just assemble other policies because it needs to
# be able to assign an acl policy, and is purpose built for the nomad
# server.
resource "consul_acl_policy" "nomad_server" {
  count = var.configure_for_nomad ? 1 : 0

  name        = "resin-nomad-server"
  description = "Policy for Nomad server"
  rules = jsonencode({
    agent_prefix = {
      "" = {
        policy = "read"
      }
    }

    node_prefix = {
      "" = {
        policy = "read"
      }
    }

    service_prefix = {
      "" = {
        policy = "write"
      }
    }

    acl = "write"
  })
}

resource "consul_acl_policy" "nomad_client" {
  count = var.configure_for_nomad ? 1 : 0

  name        = "resin-nomad-client"
  description = "Policy for Nomad client"
  rules = jsonencode({
    agent_prefix = {
      "" = {
        policy = "read"
      }
    }

    node_prefix = {
      "" = {
        policy = "read"
      }
    }

    service_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}
