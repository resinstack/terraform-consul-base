resource "consul_acl_policy" "vault_server" {
  count = var.configure_for_vault ? 1 : 0

  name        = "resin-vault-server"
  description = "Policy for Vault server"
  rules = jsonencode({
    key_prefix = {
      "vault/" = {
        policy = "write"
      }
    },
    node_prefix = {
      "" = {
        policy = "write"
      }
    },
    service = {
      vault = {
        policy = "write"
      }
    },
    agent_prefix = {
      "" = {
        policy = "write"
      }
    },
    session_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}
