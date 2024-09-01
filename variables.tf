variable "storage_account_name" {
  description = "This name of the storage account. Must be globally unique"
  type        = string
}

variable "resource_group_name" {
  description = "The resource name where the storage will be created."
  type        = string
}

variable "location" {
  description = "The azure location where the storage will be created."
  type = string
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
}

variable "container_access_type" {
  description = "The access type of the storage container"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
