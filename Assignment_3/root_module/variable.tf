variable "rg" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnet = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}

variable "pip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}

variable "nsg" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "vm" {
  type = map(object({
    nsg_name            = string
    resource_group_name = string
    location            = string
    nic_name            = string
    ip_configuration = list(object({
      name = string
    }))
    vm_name                         = string
    disable_password_authentication = bool
    size                            = string
    os_disk = list(object({
      caching              = string
      storage_account_type = string
    }))
    source_image_reference = list(object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    }))
    custom_data                  = optional(string)
    subnet_name                  = string
    virtual_network_name         = string
    pip_name                     = string
    kv_name                      = string
    administrator_login          = string
    administrator_login_password = string
  }))
}


variable "log" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = string
    retention_in_days   = number
  }))
}


variable "aaa" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string
  }))
}
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

