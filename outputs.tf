output "workspace_network_options_network_policy_id" {
  description = "Map of network_policy_id values across all workspace_network_options, keyed the same as var.workspace_network_options except keys with no network_policy_id are omitted"
  value       = { for k, v in databricks_workspace_network_option.workspace_network_options : k => v.network_policy_id if v.network_policy_id != null && length(v.network_policy_id) > 0 }
}
output "workspace_network_options_workspace_id" {
  description = "Map of workspace_id values across all workspace_network_options, keyed the same as var.workspace_network_options except keys with no workspace_id are omitted"
  value       = { for k, v in databricks_workspace_network_option.workspace_network_options : k => v.workspace_id if v.workspace_id != null }
}

