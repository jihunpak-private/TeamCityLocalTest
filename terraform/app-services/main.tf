module "app_service_plans" {
  source = "../app-service-plans"

  resource_group_name       = var.resource_group_name
  app_service_plan_location = var.app_service_plan_location
  app_service_name          = local.app_service_name
  app_service_plan_kind     = var.app_service_plan_kind
  app_service_plan_sku      = var.app_service_plan_sku
}

resource "azurerm_app_service" "frontend" {
  name                = module.app_service_plans.app_service_plan_name
  location            = module.app_service_plans.app_service_plan_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = module.app_service_plans.app_service_plan_id
  https_only          = true

  site_config {
    acr_use_managed_identity_credentials = false
    always_on                            = true
    default_documents = [
      "Default.htm",
      "Default.html",
      "Default.asp",
      "index.htm",
      "index.html",
      "iisstart.htm",
      "default.aspx",
      "index.php",
      "hostingstart.html",
    ]
    dotnet_framework_version    = "v4.0"
    ftps_state                  = "AllAllowed"
    http2_enabled               = false
    ip_restriction              = []
    local_mysql_enabled         = false
    managed_pipeline_mode       = "Integrated"
    min_tls_version             = "1.2"
    number_of_workers           = 1
    remote_debugging_enabled    = false
    scm_ip_restriction          = []
    scm_type                    = "None"
    scm_use_main_ip_restriction = false
    use_32_bit_worker_process   = true
    vnet_route_all_enabled      = false
    websockets_enabled          = false
  }

  timeouts {}

  depends_on = [module.app_service_plans]
}
