resource "databricks_workspace_network_option" "workspace_network_options" {
  for_each = var.workspace_network_options

  network_policy_id = each.value.network_policy_id
  workspace_id      = each.value.workspace_id
}

