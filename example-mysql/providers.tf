terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"  
    storage_account_name = "descomplicandoterraform"       
    container_name       = "descomplicando-terraform-2024" 
    key                  = "example.mysql.terraform.tfstate"        
    use_oidc             = true                            
}
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}