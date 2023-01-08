#Configure the Azure Provider

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.2"
    }
  }
  required_version = ">=1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "eastus2"
  tags = {
    Environment = "Splunk Test"
    User        = "mwhitener"
  }
}

#Creating the Azure Virtual Network
resource "azurerm_virtual_network" "rg-net" {
  name                = var.virtual_network_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = ["172.16.0.0/16"]
}