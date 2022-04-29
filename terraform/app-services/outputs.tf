output "app_service_name" {
  description = "The name of the app service deployed."
  value       = azurerm_app_service.frontend.name
}

output "app_service_location" {
  description = "The location of the app service deployed."
  value       = azurerm_app_service.frontend.location
}

output "app_service_plan_name" {
  description = "The name of app service plan deployed."
  value       = module.app_service_plans.app_service_plan_name
}

output "app_service_plan_id" {
  description = "The ID of app service plan deployed."
  value       = module.app_service_plans.app_service_plan_id
}

output "app_service_plan_location" {
  description = "The location of app service plan deployed."
  value       = module.app_service_plans.app_service_plan_location
}

output "app_service_plan_kind" {
  description = "The kind of app service plan deployed."
  value       = module.app_service_plans.app_service_plan_kind
}

output "app_service_plan_sku" {
  description = "The sku of app service plan deployed."
  value       = module.app_service_plans.app_service_plan_sku
}