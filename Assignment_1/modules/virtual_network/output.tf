output "virtual_networks" {
  description = "List of created Virtual Networks"
  value = {
    for k, vnet in azurerm_virtual_network.vnet : k => {
      id                = vnet.id
      name              = vnet.name
      location          = vnet.location
      resource_group    = vnet.resource_group_name
      address_space     = vnet.address_space
    }
  }
}

output "vnet_name" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.name }
}

output "vnet_id" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.id }
}

output "vnet_location" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.location }
}

output "vnet_resource_group" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.resource_group_name }
}

output "vnet_address_space" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.address_space }
}
