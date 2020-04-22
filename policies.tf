data "consul_acl_policy" "global_management" {
  name = "global-management"
}

resource "consul_acl_policy" "all_key_write" {
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

resource "consul_acl_policy" "all_key_read" {
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
