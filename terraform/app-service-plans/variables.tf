variable "resource_group_name" {
  description = "(required) Name of the target Resource Group"
  type        = string
}

variable "app_service_plan_location" {
  description = "(required) Location of the target resource to deploy"
  type        = string
}

variable "app_service_name" {
  description = "(required) Name of the App Service Plan to deploy"
  type        = string
}

variable "app_service_plan_kind" {
  description = "(optional) Kind of operating system"
  type        = string
  default     = "Linux"
  validation {
    condition     = contains(["Linux", "Windows", "elastic", "FunctionApp"], var.app_service_plan_kind)
    error_message = "Argument 'kind' must be either of 'Linux', 'Windows', 'elastic' or 'FunctionApp'."
  }
}

variable "app_service_plan_sku" {
  description = "(optional) A sku block as documented below."
  type        = object({
    tier = string
    size = string
  })
  default = {
    tier = "Standard"
    size = "S1"
  }
}