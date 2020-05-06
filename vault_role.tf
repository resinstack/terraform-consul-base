resource "consul_acl_role" "vault_server" {
  count = var.configure_for_vault ? 1 : 0

  name        = "vault-server"
  description = "Role for Vault server"

  policies = [
    consul_acl_policy.vault_server[0].id,
  ]
}
