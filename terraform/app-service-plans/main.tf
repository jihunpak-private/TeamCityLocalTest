resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.app_service_plan_location
  kind                = var.app_service_plan_kind
  reserved            = var.app_service_plan_kind != "Windows"

  sku {
    tier = var.app_service_plan_sku.tier
    size = var.app_service_plan_sku.size
  }
}