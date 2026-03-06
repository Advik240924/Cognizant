module "resource_groups" {
  source = "../../Assignment_1/modules/resource_group"
  rg     = var.rg
}

module "virtual_netowrk" {
  source     = "../../Assignment_1/modules/virtual_network"
  depends_on = [module.resource_groups]
  vnet       = var.vnet
}

module "public_ip" {
  source     = "../../Assignment_1/modules/public_ip"
  depends_on = [module.resource_groups]
  pip        = var.pip
}

module "netowrk_security_group" {
  source     = "../../Assignment_1/modules/network_security_group"
  depends_on = [module.resource_groups, module.virtual_netowrk]
  nsg        = var.nsg
}

module "azurerm_linux_virtual_machine" {
  source     = "../../Assignment_1/modules/virtual_machine"
  depends_on = [module.resource_groups, module.key_vault, module.key_vault_secret, module.public_ip, module.virtual_netowrk]
  vm         = var.vm
}

module "automation_account" {
  source     = "../../Assignment_2/modules/automation_account"
  aaa        = var.aaa
  depends_on = [module.azurerm_linux_virtual_machine]
}

module "azurerm_log_analytics_workspace" {
  source     = "../../Assignment_2/modules/log_analytic_workspace"
  log        = var.log
  depends_on = [module.resource_groups, module.automation_account]
}

module "azurerm_automation_schedule" {
  source              = "../../Assignment_2/modules/automation_schedule"
  automation_schedule = var.automation_schedule
  depends_on          = [module.resource_groups, module.automation_account]
}
