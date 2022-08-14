
variable "prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = "poc"
}

variable "az_location" {
  type    = string
  default = "eastus"
}

variable "az_container_name" {
  type        = string
  description = "Name of container on storage account for Terraform state"
  default     = "terraform-state"
}

variable "az_state_key" {
  type        = string
  description = "Name of key in storage account for Terraform state"
  default     = "terraform.tfstate"
}

variable "az_client_id" {
  type        = string
  description = "Client ID with permissions to create resources in Azure, use env variables"
  default = ""
}

variable "az_client_secret" {
  type        = string
  description = "Client secret with permissions to create resources in Azure, use env variables"
  default = ""
}

variable "az_subscription" {
  type        = string
  description = "Client ID subscription, use env variables"
  default = ""
}

variable "az_tenant" {
  type        = string
  description = "Client ID Azure AD tenant, use env variables"
  default = ""
}

## Secret Var Ends ##

resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

locals {
  /* tf-az_project_name        = "${var.prefix}-project-${random_integer.suffix.result}"
  tf-az_project_description = "Project for ${var.prefix}"
  tf-az_project_visibility  = "private"
  tf-az_pipeline_name_1     = "${var.prefix}-pipeline-1" */

  az_resource_group_name  = "${var.prefix}${random_integer.suffix.result}"
  az_storage_account_name = "${lower(var.prefix)}${random_integer.suffix.result}"

}