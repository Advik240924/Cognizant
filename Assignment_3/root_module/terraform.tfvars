

rg = {
  rg1 = {
    name       = "prod-app-rg"
    location   = "west us 2"
    managed_by = "prod-devops-team"
    tags = {
      env = "prod-team"
    }
  }
}

vnet = {
  vnet1 = {
    name                = "prod-vnet"
    resource_group_name = "prod-app-rg"
    location            = "west us 2"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      subnet1 = {
        name             = "frontend_subnet"
        address_prefixes = ["10.0.1.0/27"]
      }
      subnet2 = {
        name             = "backend_subnet"
        address_prefixes = ["10.0.2.0/27"]
      }
      subnet3 = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.0.3.0/27"]
      }
    }
  }
}

pip = {
  pip1 = {
    name                = "prodpip"
    location            = "west us 2"
    resource_group_name = "prod-app-rg"
    allocation_method   = "Static"
  }
}


nsg = {
  nsg1 = {
    name                = "prod_nsg1"
    resource_group_name = "prod-app-rg"
    location            = "west us 2"
  }
}

vm = {
  vm1 = {
    name                = "prod_nsg1"
    resource_group_name = "prod-app-rg"
    location            = "west us 2"
    nic_name            = "prod_nic1"
    nsg_name            = "prod_nsg1"
    ip_configuration = [{
      name = "prodvm"
    }]
    vm_name                         = "prod-frontend-vm"
    disable_password_authentication = false
    size                            = "Standard_D2as_v5"
    os_disk = [{
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }]
    source_image_reference = [{
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }]
    subnet_name                  = "frontend_subnet"
    pip_name                     = "prodpip"
    kv_name                      = "keyvault"
    administrator_login          = "vm-username"
    administrator_login_password = "vm-password"
    virtual_network_name         = "prod-vnet"
    custom_data                  = <<-EOF
#!/bin/bash
apt-get update
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx
EOF
  }
}


log = {
  log1 = {
    name                = "prod-log"
    location            = "East US"
    resource_group_name = "prod-app-rg"
    sku                 = "PerGB2018"
    retention_in_days   = 30
  }
}

aaa = {
  aaa1 = {
    name                = "prod-account"
    location            = "East US"
    resource_group_name = "prod-app-rg"
    sku_name            = "Basic"
  }
}

automation_schedule = {
  automation_schedule = {
    name                    = "prod-aa"
    resource_group_name     = "prod-app-rg"
    automation_account_name = "prod-account"
    frequency               = "Week"
    interval                = 1
    start_time              = "2026-03-08T03:00:00Z"
  }
}