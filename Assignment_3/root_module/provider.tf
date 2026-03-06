terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "aks-rg"
    storage_account_name = "constg321"
    container_name       = "cognizant"
    key                  = "prod-env.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "********"
}