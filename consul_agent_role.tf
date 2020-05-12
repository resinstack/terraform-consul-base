resource "consul_acl_role" "consul_agent" {
  name        = "consul-agent"
  description = "Role for Consul agents"

  policies = [
    consul_acl_policy.consul_agent.id,
  ]
}
