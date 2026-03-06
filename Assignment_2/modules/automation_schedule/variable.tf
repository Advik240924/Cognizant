variable "automation_schedule" {
  type = map(object({
    name                    = string
    resource_group_name     = string
    automation_account_name = string
    frequency               = string
    interval                = number
    start_time              = string
  }))
}
