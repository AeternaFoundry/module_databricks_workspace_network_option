variable "workspace_network_options" {
  description = <<EOT
Map of workspace_network_options, attributes below
Optional:
    - network_policy_id
    - workspace_id
EOT

  type = map(object({
    network_policy_id = optional(string)
    workspace_id      = optional(number)
  }))
}

