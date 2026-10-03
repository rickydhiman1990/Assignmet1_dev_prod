
terraform {
  required_version = ">= 1.14.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ricky-prac-rg"
    storage_account_name = "ricky-prac-sa"
    container_name       = "ricky-prac-container"
    key                  = "ricky-prod-terraform.tfstate"

  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

