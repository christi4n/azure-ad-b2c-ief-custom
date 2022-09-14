terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name     = "rg-terraform-state-cb001"
    storage_account_name    = "tfstate13846"
    container_name          = "tfstate"
    key                     = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}