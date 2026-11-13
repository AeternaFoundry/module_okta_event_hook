output "event_hooks_id" {
  description = "Map of id values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.id }
}
output "event_hooks_auth" {
  description = "Map of auth values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.auth }
}
output "event_hooks_channel" {
  description = "Map of channel values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.channel }
}
output "event_hooks_events" {
  description = "Map of events values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.events }
}
output "event_hooks_headers" {
  description = "Map of headers values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.headers }
}
output "event_hooks_name" {
  description = "Map of name values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.name }
}
output "event_hooks_status" {
  description = "Map of status values across all event_hooks, keyed the same as var.event_hooks"
  value       = { for k, v in okta_event_hook.event_hooks : k => v.status }
}

