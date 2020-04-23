variable "create_root_role" {
  type        = bool
  description = "Create root role with global-management"
  default     = true
}

variable "create_kv_policies" {
  type        = bool
  description = "Create prefix policies for KV store"
  default     = false
}

variable "create_agent_policies" {
  type        = bool
  description = "Create prefix policies for agents"
  default     = false
}

variable "create_event_policies" {
  type        = bool
  description = "Create prefix policies for events"
  default     = false
}

variable "create_node_policies" {
  type        = bool
  description = "Create prefix policies for nodes"
  default     = false
}

variable "create_query_policies" {
  type        = bool
  description = "Create prefix policies for querys"
  default     = false
}

variable "create_service_policies" {
  type        = bool
  description = "Create prefix policies for services"
  default     = false
}

variable "create_session_policies" {
  type        = bool
  description = "Create prefix policies for sessions"
  default     = false
}

variable "anonymous_kv_read" {
  type        = bool
  description = "Allow anonymous read for kv data"
  default     = false
}

variable "anonymous_kv_write" {
  type        = bool
  description = "Allow anonymous write for kv data"
  default     = false
}

variable "anonymous_agent_read" {
  type        = bool
  description = "Allow anonymous read for agent data"
  default     = false
}

variable "anonymous_agent_write" {
  type        = bool
  description = "Allow anonymous write for agent data"
  default     = false
}

variable "anonymous_event_read" {
  type        = bool
  description = "Allow anonymous read for event data"
  default     = false
}

variable "anonymous_event_write" {
  type        = bool
  description = "Allow anonymous write for event data"
  default     = false
}

variable "anonymous_node_read" {
  type        = bool
  description = "Allow anonymous read for node data"
  default     = false
}

variable "anonymous_node_write" {
  type        = bool
  description = "Allow anonymous write for node data"
  default     = false
}

variable "anonymous_query_read" {
  type        = bool
  description = "Allow anonymous read for query data"
  default     = false
}

variable "anonymous_query_write" {
  type        = bool
  description = "Allow anonymous write for query data"
  default     = false
}

variable "anonymous_service_read" {
  type        = bool
  description = "Allow anonymous read for service data"
  default     = false
}

variable "anonymous_service_write" {
  type        = bool
  description = "Allow anonymous write for service data"
  default     = false
}

variable "anonymous_session_read" {
  type        = bool
  description = "Allow anonymous read for session data"
  default     = false
}

variable "anonymous_session_write" {
  type        = bool
  description = "Allow anonymous write for session data"
  default     = false
}
