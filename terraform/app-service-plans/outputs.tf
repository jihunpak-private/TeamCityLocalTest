output "app_service_plan_name" {
  description = "The name of app service plan deployed."
  value       = azurerm_app_service_plan.asp.name
}

output "app_service_plan_location" {
  description = "The location of app service plan deployed."
  value       = azurerm_app_service_plan.asp.location
}

output "app_service_plan_kind" {
  description = "The kind of app service plan deployed."
  value       = azurerm_app_service_plan.asp.kind
}

output "app_service_plan_sku" {
  description = "The sku of app service plan deployed."
  value       = azurerm_app_service_plan.asp.sku
}

output "app_service_plan_id" {
  description = "ID created for App Service Plan"
  value       = azurerm_app_service_plan.asp.id
}