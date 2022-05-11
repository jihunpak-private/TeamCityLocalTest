variable "resource_group_name" {
  description = "(required) Name of the target Resource Group"
  type        = string
}

variable "app_service_plan_location" {
  description = "(required) Location of the target resource to deploy"
  type        = string
}

variable "app_service_name_prefix" {
  description = "(required) Name prefix of the App Service to deploy"
  type        = string
}

variable "app_service_plan_kind" {
  description = "(required) Type of the App Service Plan"
  validation {
    condition     = contains(["Linux", "Windows"], var.app_service_plan_kind)
    error_message = "Possible values is either 'Linux' or 'Windows'."
  }
}

variable "app_service_plan_sku" {
  description = "(required) A sku block as documented below."
  type        = object({
    tier = string
    size = string
  })
  default = {
    tier = "Standard"
    size = "S1"
  }
}