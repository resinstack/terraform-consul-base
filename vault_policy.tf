resource "consul_acl_policy" "vault_server" {
  count = var.configure_for_vault ? 1 : 0

  name        = "resin-vault-server"
  description = "Policy for Vault server"
  rules = jsonencode({
    service = {
      vault = {
        policy = "write"
      }
    },
  })
}
