output "log_analytics_workspaces" {
  description = "List of created Log Analytics Workspaces"
  value = {
    for k, log in azurerm_log_analytics_workspace.log : k => {
      id                = log.id
      name              = log.name
      location          = log.location
      resource_group    = log.resource_group_name
      sku               = log.sku
    }
  }
}

output "log_workspace_name" {
  value = { for k, v in azurerm_log_analytics_workspace.log : k => v.name }
}

output "log_workspace_id" {
  value = { for k, v in azurerm_log_analytics_workspace.log : k => v.id }
}

output "log_workspace_location" {
  value = { for k, v in azurerm_log_analytics_workspace.log : k => v.location }
}

output "log_workspace_rg" {
  value = { for k, v in azurerm_log_analytics_workspace.log : k => v.resource_group_name }
}

output "log_workspace_sku" {
  value = { for k, v in azurerm_log_analytics_workspace.log : k => v.sku }
}