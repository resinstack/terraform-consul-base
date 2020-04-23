resource "consul_acl_role" "nomad_server" {
  count = var.configure_for_nomad ? 1 : 0

  name        = "nomad-server"
  description = "Role for Nomad servers"

  policies = [
    consul_acl_policy.nomad_server[0].id,
    consul_acl_policy.nomad_client[0].id,
  ]
}

resource "consul_acl_role" "nomad_client" {
  count = var.configure_for_nomad ? 1 : 0

  name        = "nomad-client"
  description = "Role for Nomad clients"

  policies = [
    consul_acl_policy.nomad_client[0].id,
  ]
}
