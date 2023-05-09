


terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.53.0"
    }
  }

 backend "azurerm" {

    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg10032002933fefcf"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
 } 
}


provider "azurerm" {
  features {}
  # Configuration options


}