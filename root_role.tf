resource "consul_acl_role" "root" {
  count = var.create_root_role ? 1 : 0

  name        = "root"
  description = "Cluster superuser access"

  policies = [data.consul_acl_policy.global_management.id]
}
