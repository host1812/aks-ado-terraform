terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-darkbagel-infra-dev"
    storage_account_name = "stordarkbagelinfradev"
    container_name       = "tfstates"
    key                  = "dev.tfstate"
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
