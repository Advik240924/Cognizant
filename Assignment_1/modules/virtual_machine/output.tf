output "virtual_machines" {
  description = "List of created Virtual Machines"
  value = {
    for k, vm in azurerm_linux_virtual_machine.vm : k => {
      id        = vm.id
      name      = vm.name
      location  = vm.location
      size      = vm.size
    }
  }
}

output "vm_name" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.name }
}

output "vm_id" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.id }
}

output "vm_location" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.location }
}

output "vm_size" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.size }
}
