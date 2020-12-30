# Use Azure provider
# SP SECRET = 90O9~AJoC9ITl04UwDT.4S~._qou7k5InN
terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 2.26"
    }
  }  
}

provider "azurerm" {
    features {}
}

#resource "azurerm_resource_group" "rg" {
#    name = "rg_tfresourcegroup02"
#    location = "eastus"
#}
