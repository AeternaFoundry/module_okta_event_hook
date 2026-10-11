variable "event_hooks" {
  description = <<EOT
Map of event_hooks, attributes below
Required:
    - channel
    - events
    - name
Optional:
    - auth
    - status
    - headers (block):
        - key (optional)
        - value (optional)
EOT

  type = map(object({
    channel = map(string)
    events  = set(string)
    name    = string
    auth    = optional(map(string))
    status  = optional(string)
    headers = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
  }))
}

