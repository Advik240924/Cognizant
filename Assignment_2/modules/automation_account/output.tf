output "automation_accounts" {
  description = "List of created Automation Accounts"
  value = {
    for k, aaa in azurerm_automation_account.aaa : k => {
      id                  = aaa.id
      name                = aaa.name
      location            = aaa.location
    }
  }
}

output "automation_account_name" {
  value = { for k, v in azurerm_automation_account.aaa : k => v.name }
}

output "automation_account_id" {
  value = { for k, v in azurerm_automation_account.aaa : k => v.id }
}

output "automation_account_location" {
  value = { for k, v in azurerm_automation_account.aaa : k => v.location }
}
