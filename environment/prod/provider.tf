terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    storage_account_name = "stmyappprodtfstate01" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "azurertffile"         # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "keyfile"              # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}