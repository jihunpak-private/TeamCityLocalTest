resource "random_string" "random" {
  length  = 4
  special = false
}

locals {
  resource_group_name = format(
    "%s_rg_%s",
    var.group_prefix,
    resource.random_string.random.result
  )
}