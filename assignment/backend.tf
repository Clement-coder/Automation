terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01650177RG"
    storage_account_name = "tfstaten01650177sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}
