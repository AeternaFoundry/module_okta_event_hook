resource "okta_event_hook" "event_hooks" {
  for_each = var.event_hooks

  channel = each.value.channel
  events  = each.value.events
  name    = each.value.name
  auth    = each.value.auth
  status  = each.value.status

  dynamic "headers" {
    for_each = each.value.headers != null ? each.value.headers : []
    content {
      key   = headers.value.key
      value = headers.value.value
    }
  }
}

