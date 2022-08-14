terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
 // Updatign file

provider "azurerm" {
  features {}
  subscription_id   = var.az_subscription
  tenant_id         = var.az_tenant
  client_id         = var.az_client_id
  client_secret     = var.az_client_secret
}


## changed