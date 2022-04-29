resource "random_string" "random" {
  length  = 4
  special = false
}

locals {
  app_service_name = format(
    "%s-%s",
    lower(var.app_service_name_prefix),
    lower(resource.random_string.random.result)
  )
}
