# Use Azure provider
# To use a SPN, create an app in azure, generate a secret for the new SPN
# Add contributor role for the SPN at the subscription level
# Example secret
# SP SECRET = 90O9~AJoC9ITl04UwDT.4S~._qou7k5InN
#
# Then login with az/cli using spn and secret:
# az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID
# - If this is automated or running in a container, you can set these as environment variable
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
