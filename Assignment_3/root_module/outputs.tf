output "all_resource_groups" {
  description = "All created resource groups"
  value       = module.resource_groups.resource_groups
}

output "public_ips" {
  description = "Public IP addresses"
  value       = module.public_ip.public_ips
}

output "all_virtual_networks" {
  description = "All virtual networks"
  value       = module.virtual_netowrk.virtual_networks
}

output "all_virtual_machines" {
  description = "All virtual machines"
  value       = module.azurerm_linux_virtual_machine.virtual_machines
}

output "all_automation_accounts" {
  description = "Automation accounts"
  value       = module.automation_account.automation_accounts
}

output "all_log_analytics_workspaces" {
  description = "Log Analytics workspaces"
  value       = module.azurerm_log_analytics_workspace.log_analytics_workspaces
}

output "all_automation_schedules" {
  description = "Automation schedules"
  value       = module.azurerm_automation_schedule.automation_schedules
}