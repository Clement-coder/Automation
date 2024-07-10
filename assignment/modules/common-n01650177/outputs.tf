output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.n01650177-law.name
}

output "recovery_services_vault_name" {
  value = azurerm_recovery_services_vault.n01650177-rsv.name
}

output "storage_account_name" {
  value = azurerm_storage_account.n01650177-sa.name
}

output "primary_blob_endpoint"{
value = azurerm_storage_account.n01650177-sa.primary_blob_endpoint
}
