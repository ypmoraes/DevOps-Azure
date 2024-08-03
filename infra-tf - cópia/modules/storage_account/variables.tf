variable "resource_group_name" {
  type        = string
  default     = "VelozientRG"
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  default     = "brazilsouth"
  description = "Location for the resources"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "account_kind" {
  type        = string
  description = "The kind of storage account"
  default     = "StorageV2"
}

variable "replication_type" {
  type        = string
  description = "The replication type of the storage account"
  default     = "LRS"
}

variable "account_tier" {
  type        = string
  description = "The replication type of the storage account"
  default     = "Standard"
}