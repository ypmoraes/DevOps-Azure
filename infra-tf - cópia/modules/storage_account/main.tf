# modules/storage_account/main.tf
resource "azurerm_storage_account" "backup" {
  name                          = var.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_kind                  = var.account_kind
  account_replication_type      = var.replication_type
  account_tier                  = var.account_tier
}

output "storage_account_name" {
  value = azurerm_storage_account.backup.name
}
