
resource "azurerm_log_analytics_workspace" "n01650177-law" {
  name                = "log-analytics-workspace"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

resource "azurerm_recovery_services_vault" "n01650177-rsv" {
  name                = "recovery-services-vault"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}

resource "azurerm_storage_account" "n01650177-sa" {
  name                     = "n01650177sa"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

