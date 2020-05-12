resource "consul_acl_policy" "consul_agent" {
  name        = "resin-consul-agent"
  description = "Policy for consul agents"
  rules = jsonencode({
    node_prefix = {
      "" = {
        policy = "write"
      }
    }
    service_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}
