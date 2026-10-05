terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "varteststoragerg1"
    container_name       = "variablestatefile"
    key                  = "terraform.prod"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }
  }
}
provider "azurerm" {
  features {
  }
}