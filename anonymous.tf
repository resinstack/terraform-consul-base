resource "consul_acl_token_policy_attachment" "anonymous_kv_read" {
  count = var.anonymous_kv_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_kv_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_kv_write" {
  count = var.anonymous_kv_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_kv_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_agent_read" {
  count = var.anonymous_agent_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_agent_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_agent_write" {
  count = var.anonymous_agent_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_agent_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_event_read" {
  count = var.anonymous_event_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_event_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_event_write" {
  count = var.anonymous_event_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_event_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_node_read" {
  count = var.anonymous_node_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_node_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_node_write" {
  count = var.anonymous_node_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_node_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_query_read" {
  count = var.anonymous_query_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_query_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_query_write" {
  count = var.anonymous_query_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_query_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_service_read" {
  count = var.anonymous_service_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_service_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_service_write" {
  count = var.anonymous_service_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_service_write.name
}

resource "consul_acl_token_policy_attachment" "anonymous_session_read" {
  count = var.anonymous_session_read ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_session_read.name
}

resource "consul_acl_token_policy_attachment" "anonymous_session_write" {
  count = var.anonymous_session_write ? 1 : 0

  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.all_session_write.name
}
