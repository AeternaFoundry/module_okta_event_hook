output "event_hooks_id" {
  description = "Map of id values across all event_hooks, keyed the same as var.event_hooks except keys with no id are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_hooks_auth" {
  description = "Map of auth values across all event_hooks, keyed the same as var.event_hooks except keys with no auth are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.auth if v.auth != null && length(v.auth) > 0 }
}
output "event_hooks_channel" {
  description = "Map of channel values across all event_hooks, keyed the same as var.event_hooks except keys with no channel are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.channel if v.channel != null && length(v.channel) > 0 }
}
output "event_hooks_events" {
  description = "Map of events values across all event_hooks, keyed the same as var.event_hooks except keys with no events are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.events if v.events != null && length(v.events) > 0 }
}
output "event_hooks_headers" {
  description = "Map of headers values across all event_hooks, keyed the same as var.event_hooks except keys with no headers are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.headers if v.headers != null && length(v.headers) > 0 }
}
output "event_hooks_name" {
  description = "Map of name values across all event_hooks, keyed the same as var.event_hooks except keys with no name are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "event_hooks_status" {
  description = "Map of status values across all event_hooks, keyed the same as var.event_hooks except keys with no status are omitted"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.status if v.status != null && length(v.status) > 0 }
}

