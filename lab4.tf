terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0"
}
 
provider "azurerm" {
  features {}
}
 
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "rg2" {
  name     = "SecondRGonPush"
  location = var.location
  tags     = var.tags
}


resource "azurerm_resource_group" "rg3" {
  name     = "thirdrgfrommerge"
  location = var.location
  tags     = var.tags
}
