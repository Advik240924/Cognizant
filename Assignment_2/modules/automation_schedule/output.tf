output "automation_schedules" {
  description = "List of created Automation Schedules"
  value = {
    for k, schedule in azurerm_automation_schedule.weekly_patch : k => {
      id                      = schedule.id
      name                    = schedule.name
      resource_group_name     = schedule.resource_group_name
    }
  }
}

output "automation_schedule_name" {
  value = { for k, v in azurerm_automation_schedule.weekly_patch : k => v.name }
}

output "automation_schedule_id" {
  value = { for k, v in azurerm_automation_schedule.weekly_patch : k => v.id }
}

output "automation_schedule_rg" {
  value = { for k, v in azurerm_automation_schedule.weekly_patch : k => v.resource_group_name }
}
