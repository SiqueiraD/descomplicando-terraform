# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"     # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "descomplicandoterraform"          # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "descomplicando-terraform-2024"    # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "descomplicando.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_oidc             = true                               # Can also be set via `ARM_USE_OIDC` environment variable.
}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}