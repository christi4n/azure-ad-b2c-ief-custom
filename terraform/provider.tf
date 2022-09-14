terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.28.1"
    }
    azureadb2cief = {
        source  = "pjfebbraro/azureadb2cief"
        version = "~> 0.1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azureadb2cief" {
  tenant_id = var.TENANT_ID
  use_cli   = false
}