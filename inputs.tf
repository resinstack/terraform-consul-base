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
