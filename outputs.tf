output "storage_account_name" {
  description = "The name of created storage account"
  value       = azurerm_storage_account.this.name
}

output "storage_account_id" {
  description = "The ID of the created storage account"
  value       = azurerm_storage_account.this.id
}

output "container_name" {
  description = "The name of created storage container"
  value       = azurerm_storage_container.this.name
}

output "endpoint" {
  description = "The endpoint url storage"
  value = (var.container_access_type == "private" ?
    "Private access: no public access" :
  "Public access: https://${azurerm_storage_account.this.name}.blob.core.windows.net/${azurerm_storage_container.this.name}")
}

output "sample_endpoint" {
  description = "The sample url for example file"
  value = (var.container_access_type == "private" ?
    "Private access: no public access" :
  "Public access: https://${azurerm_storage_account.this.name}.blob.core.windows.net/${azurerm_storage_container.this.name}/${azurerm_storage_blob.example.name}")
}
