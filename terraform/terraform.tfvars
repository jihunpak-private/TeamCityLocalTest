###########################################################
#  Common
###########################################################
// temporarily changed the location to "eastus2" for the test of Batch Accounts deployment
// no more quota for Batch Accounts for "eastus"
location = "eastus"

###########################################################
#  Resource Groups
###########################################################
resource_group_name_prefix = "jihun"

###########################################################
#  Frontend App Services
###########################################################
app_service_plan_kind = "Linux"
app_service_plan_sku  = {
  tier = "Standard"
  size = "S1"
}
app_service_name_prefix = "frontend"
