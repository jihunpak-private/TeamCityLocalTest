###########################################################
#  Resource Group
###########################################################
module "resource_group" {
  source = "./resource-group/resource-group"

  group_prefix  = var.resource_group_name_prefix
  location      = var.location
}

###########################################################
#  Frontend App Service Deployment
###########################################################
module "frontend_app_service" {
  source = "./app-services"
  depends_on = [module.resource_group]

  resource_group_name       = module.resource_group.resource_group_name
  app_service_plan_location = module.resource_group.resource_group_location
  app_service_plan_kind     = var.app_service_plan_kind
  app_service_plan_sku      = var.app_service_plan_sku
  app_service_name_prefix   = var.app_service_name_prefix
}