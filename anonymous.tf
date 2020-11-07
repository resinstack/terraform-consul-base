locals {
  prefix_kv_write = {
    key_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_kv_read = {
    key_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_agent_write = {
    agent_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_agent_read = {
    agent_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_event_write = {
    event_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_event_read = {
    event_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_node_write = {
    node_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_node_read = {
    node_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_query_write = {
    query_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_query_read = {
    query_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_service_write = {
    service_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_service_read = {
    service_prefix = {
      "" = {
        policy = "read"
      }
    }
  }

  prefix_session_write = {
    session_prefix = {
      "" = {
        policy = "write"
      }
    }
  }

  prefix_session_read = {
    session_prefix = {
      "" = {
        policy = "read"
      }
    }
  }
}

resource "consul_acl_policy" "anonymous" {
  name        = "resin-anonymous"
  description = "Anonymous Policy"

  rules = jsonencode(merge(
    var.anonymous_kv_read ? local.prefix_kv_read : {},
    var.anonymous_kv_write ? local.prefix_kv_write : {},
    var.anonymous_agent_read ? local.prefix_agent_read : {},
    var.anonymous_agent_write ? local.prefix_agent_write : {},
    var.anonymous_event_read ? local.prefix_event_read : {},
    var.anonymous_event_write ? local.prefix_event_write : {},
    var.anonymous_node_read ? local.prefix_node_read : {},
    var.anonymous_node_write ? local.prefix_node_write : {},
    var.anonymous_query_read ? local.prefix_query_read : {},
    var.anonymous_query_write ? local.prefix_query_write : {},
    var.anonymous_service_read ? local.prefix_service_read : {},
    var.anonymous_service_write ? local.prefix_service_write : {},
    var.anonymous_session_read ? local.prefix_session_read : {},
    var.anonymous_session_write ? local.prefix_session_write : {},
  ))
}

resource "consul_acl_token_policy_attachment" "anonymous" {
  token_id = data.consul_acl_token.anonymous.accessor_id
  policy   = consul_acl_policy.anonymous.name
}
