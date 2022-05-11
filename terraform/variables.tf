###########################################################
#  Common
###########################################################
variable "location" {
  description = "(required) Region to create the resource"
  type        = string
  default     = "eastus"
  validation {
    condition     = contains(["eastus", "eastus2", "westus", "westeurope", "switzerlandnorth", "koreacentral"], var.location)
    error_message = "Argument 'location' must be either of 'eastus', 'eastus2', 'westus' 'westeurope', 'switzerlandnorth', 'koreacentral'."
  }
}

###########################################################
#  Resource Groups
###########################################################
variable "resource_group_name_prefix" {
  description = "(required) Name prefix of resource group name"
  type        = string
}

###########################################################
#  Frontend App Services
###########################################################
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
}

variable "app_service_name_prefix" {
  description = "(required) Name prefix of the App Service to deploy"
  type        = string
}
