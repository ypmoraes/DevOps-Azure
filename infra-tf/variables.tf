# Replace with your desired values
variable "client_id" {
  type        = string
  default     = ""
  description = "Name of the client"
}

variable "client_secret" {
  type        = string
  default     = ""
  description = "Name of the client"
}

variable "tenant_id" {
  type        = string
  default     = ""
  description = "Name of the client"
}

variable "subscription_id" {
  type        = string
  default     = ""
  description = "Name of the client"
}

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

variable "vnet_address_space" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Address space for the virtual network"
}

variable "subnet_web_address_prefix" {
  type        = string
  default     = "10.0.1.0/24"
  description = "Address prefix for the web subnet"
}

variable "subnet_app_address_prefix" {
  type        = string
  default     = "10.0.2.0/24"
  description = "Address prefix for the application subnet"
}

variable "subnet_db_address_prefix" {
  type        = string
  default     = "10.0.3.0/24"
  description = "Address prefix for the database subnet"
}

variable "vmpasswd" {
  type        = string
  default     = "Password@123"
  description = "Address prefix for the database subnet"
}