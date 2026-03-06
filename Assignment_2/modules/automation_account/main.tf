resource "azurerm_automation_account" "aaa" {
  for_each            = var.aaa
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  sku_name            = each.value.sku_name
}
