locals {
  create_kv_write      = var.create_kv_policies || var.anonymous_kv_write
  create_kv_read       = var.create_kv_policies || var.anonymous_kv_read
  create_agent_write   = var.create_agent_policies || var.anonymous_agent_write
  create_agent_read    = var.create_agent_policies || var.anonymous_agent_read
  create_event_write   = var.create_event_policies || var.anonymous_event_write
  create_event_read    = var.create_event_policies || var.anonymous_event_read
  create_node_write    = var.create_node_policies || var.anonymous_node_write
  create_node_read     = var.create_node_policies || var.anonymous_node_read
  create_query_write   = var.create_query_policies || var.anonymous_query_write
  create_query_read    = var.create_query_policies || var.anonymous_query_read
  create_service_write = var.create_service_policies || var.anonymous_service_write
  create_service_read  = var.create_service_policies || var.anonymous_service_read
  create_session_write = var.create_session_policies || var.anonymous_session_write
  create_session_read  = var.create_session_policies || var.anonymous_session_read
}

resource "consul_acl_policy" "all_kv_write" {
  count = local.create_kv_write ? 1 : 0

  name        = "resin-kv-write-all"
  description = "Write to all KV prefixes"
  rules = jsonencode({
    key_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_kv_read" {
  count = local.create_kv_write ? 1 : 0

  name        = "resin-kv-read-all"
  description = "Read all KV prefixes"
  rules = jsonencode({
    key_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_agent_write" {
  count = local.create_agent_write ? 1 : 0

  name        = "resin-agent-write-all"
  description = "Write to all agent prefixes"
  rules = jsonencode({
    agent_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_agent_read" {
  count = local.create_agent_read ? 1 : 0

  name        = "resin-agent-read-all"
  description = "Read all agent prefixes"
  rules = jsonencode({
    agent_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_event_write" {
  count = local.create_event_write ? 1 : 0

  name        = "resin-event-write-all"
  description = "Write to all event prefixes"
  rules = jsonencode({
    event_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_event_read" {
  count = local.create_event_read ? 1 : 0

  name        = "resin-event-read-all"
  description = "Read all event prefixes"
  rules = jsonencode({
    event_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_node_write" {
  count = local.create_node_write ? 1 : 0

  name        = "resin-node-write-all"
  description = "Write to all node prefixes"
  rules = jsonencode({
    node_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_node_read" {
  count = local.create_node_read ? 1 : 0

  name        = "resin-node-read-all"
  description = "Read all node prefixes"
  rules = jsonencode({
    node_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_query_write" {
  count = local.create_query_write ? 1 : 0

  name        = "resin-query-write-all"
  description = "Write to all query prefixes"
  rules = jsonencode({
    query_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_query_read" {
  count = local.create_query_read ? 1 : 0

  name        = "resin-query-read-all"
  description = "Read all query prefixes"
  rules = jsonencode({
    query_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_service_write" {
  count = local.create_service_write ? 1 : 0

  name        = "resin-service-write-all"
  description = "Write to all service prefixes"
  rules = jsonencode({
    service_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_service_read" {
  count = local.create_service_read ? 1 : 0

  name        = "resin-service-read-all"
  description = "Read all service prefixes"
  rules = jsonencode({
    service_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}

resource "consul_acl_policy" "all_session_write" {
  count = local.create_session_write ? 1 : 0

  name        = "resin-session-write-all"
  description = "Write to all session prefixes"
  rules = jsonencode({
    session_prefix = {
      "" = {
        policy = "write"
      }
    }
  })
}

resource "consul_acl_policy" "all_session_read" {
  count = local.create_session_read ? 1 : 0

  name        = "resin-session-read-all"
  description = "Read all session prefixes"
  rules = jsonencode({
    session_prefix = {
      "" = {
        policy = "read"
      }
    }
  })
}
